# Supabase 스키마 정리 메모 (public 스키마 기준)

## 1. 앱에서 필수로 사용하는 테이블 (삭제 금지)

- 계정/권한/설정
  - `profiles`
  - `user_roles`
  - `user_settings`
  - `account_deletion_requests`
- 조직/현장
  - `organizations`
  - `org_members`
  - `sites`
  - `site_members`
  - `site_lodgings`
- 문서/사진대지
  - `documents`
  - `photo_sheet_drafts`
  - `photo_sheet_finals`
- 작업일지/공수/자재
  - `worklogs`
  - `worklog_manpower`
  - `worklog_worksets`
  - `worklog_materials`
- 펀치/파트너
  - `punch_groups`
  - `punch_items`
  - `partner_deployments`
- 관리자 디렉터리
  - `admin_user_directory`

## 2. Orphans 보관 테이블 (정리 후보)

앱 코드에서는 직접 사용하지 않는, 고아(orphan) 보관용 테이블들입니다.

- `documents_orphans`
- `partner_deployments_orphans`
- `punch_groups_orphans`
- `punch_items_orphans`
- `site_lodgings_orphans`
- `worklog_manpower_orphans`
- `worklog_materials_orphans`
- `worklog_worksets_orphans`
- `worklogs_orphans`

## 3. Orphans 테이블 정리 마이그레이션

다음 마이그레이션 파일에서 orphans 테이블을 정리합니다.

- `supabase/migrations/20260310170000_drop_orphans_tables.sql`

실제 적용은 아래 명령으로 수행합니다(인증/접속 설정이 된 후에만 실행).

```bash
npx supabase db push --include-all
npx supabase migration list
```

`20260310170000` 이 Local/Remote 모두에 표시되면 orphans 테이블이 삭제된 것입니다.

