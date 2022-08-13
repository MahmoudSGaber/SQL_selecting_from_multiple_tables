SELECT (
	SELECT COUNT(order_created) * 1.0 AS count_order_created
	FROM OrderT
	)
	/
	(
	SELECT COUNT(visit_date) * 1.0 AS count_total_visits
	FROM VisitsT
	) * 100 AS success_rate_from_visits

SELECT ((1.0 * (select COUNT('order_created') FROM OrderT) / (SELECT COUNT(*) FROM VisitsT) ) * 100) as count_total