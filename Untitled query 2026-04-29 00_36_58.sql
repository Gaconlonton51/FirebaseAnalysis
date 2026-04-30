SELECT 
  event_date,
  user_pseudo_id AS player_id,
  geo.country,
  device.operating_system AS os,
  
  -- 1. ACQUISITION & RETENTION: Đánh dấu ngày cài app (New Install)
  MAX(IF(event_name = 'first_open', 1, 0)) AS is_new_install,
  
  -- 2. ENGAGEMENT: Đếm số lần mở app và số ván đã chơi trong ngày
  COUNTIF(event_name = 'session_start') AS total_sessions,
  COUNTIF(event_name = 'level_complete_quickplay') AS levels_completed,
  
  -- 3. MONETIZATION: Tổng tiền nạp trong ngày (nếu có)
  SUM(IF(event_name = 'in_app_purchase', 
         (SELECT COALESCE(value.double_value, value.int_value) FROM UNNEST(event_params) WHERE key = 'value'), 0)) AS daily_revenue

FROM 
  `firebase-public-project.analytics_153293282.events_*`

WHERE 
  -- Lấy data 14 ngày đầu tháng 8 để đủ tính Retention D1, D7
  _TABLE_SUFFIX BETWEEN '20180801' AND '20180814'

GROUP BY 
  event_date,
  player_id,
  geo.country,
  device.operating_system