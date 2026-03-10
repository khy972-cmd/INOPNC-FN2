-- Orphan 보관 테이블 정리용 마이그레이션
-- 앱 코드에서는 사용하지 않는 *_orphans 테이블만 안전하게 제거합니다.

DROP TABLE IF EXISTS public.documents_orphans;
DROP TABLE IF EXISTS public.partner_deployments_orphans;
DROP TABLE IF EXISTS public.punch_groups_orphans;
DROP TABLE IF EXISTS public.punch_items_orphans;
DROP TABLE IF EXISTS public.site_lodgings_orphans;
DROP TABLE IF EXISTS public.worklog_manpower_orphans;
DROP TABLE IF EXISTS public.worklog_materials_orphans;
DROP TABLE IF EXISTS public.worklog_worksets_orphans;
DROP TABLE IF EXISTS public.worklogs_orphans;

