-- ==========================================
-- Conference VIP Analytics JOIN Project
-- ==========================================


-- 1️⃣ VIPs and Their Event Names (LEFT JOIN)
SELECT v.member_id,
       v.first_name,
       v.last_name,
       e.event_name
FROM vips v
LEFT JOIN events e
ON v.event = e.event_id;



-- 2️⃣ VIP Hotel Reservations (INNER JOIN)
SELECT v.first_name,
       v.last_name,
       h.hotel_name
FROM reservations r
INNER JOIN vips v
ON r.member_id = v.member_id
INNER JOIN hotels h
ON r.hotel = h.hotel_id;



-- 3️⃣ VIP RSVP Status (MULTIPLE JOIN)
SELECT v.first_name,
       v.last_name,
       h.hotel_name,
       r.welcome_rsvp,
       r.dinner_rsvp
FROM vips v
LEFT JOIN reservations r
ON v.member_id = r.member_id
LEFT JOIN hotels h
ON r.hotel = h.hotel_id;



-- 4️⃣ Count VIPs per Event (Aggregation Join)
SELECT e.event_name,
       COUNT(v.member_id) AS total_vips
FROM events e
LEFT JOIN vips v
ON e.event_id = v.event
GROUP BY e.event_name
ORDER BY total_vips DESC;



-- 5️⃣ SELF JOIN : Who Gives Feedback To Whom 
SELECT v1.first_name AS vip_name,
       v2.first_name AS gives_feedback_to
FROM vips v1
LEFT JOIN vips v2
ON v1.provides_feedback_to = v2.member_id;



-- 6️⃣ VIP + Event + Hotel Combined Analytics 
SELECT v.first_name,
       v.last_name,
       e.event_name,
       h.hotel_name
FROM vips v
LEFT JOIN events e
ON v.event = e.event_id
LEFT JOIN reservations r
ON v.member_id = r.member_id
LEFT JOIN hotels h
ON r.hotel = h.hotel_id;