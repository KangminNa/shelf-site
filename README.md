# shelf-site

[Naru](https://github.com/KangminNa/shelf) 소개 페이지입니다.

Naru 위에 올리는 다른 앱과 똑같이 생겼습니다 — 루트에 `Dockerfile`이 있고, 컨테이너가 포트 하나(`4023`)로 HTTP를 서빙합니다.

## Naru에 올리기

**Apps → New app**

| 칸 | 값 |
|---|---|
| Name | `landing` |
| Git repository URL | `https://github.com/KangminNa/shelf-site.git` |
| Branch | `main` |
| Container port | `4023` |
| Domain | 쓰실 도메인 |

Deploy를 누르면 빌드되고, 도메인은 프록시에 자동 등록됩니다.
앱 상세의 웹훅 주소와 시크릿을 이 저장소의 GitHub webhook에 넣으면 push할 때마다 다시 배포됩니다.

## 페이지 고치기

`index.html` 은 스크린샷까지 data URI 로 품은 **단일 파일**이라 그대로 열어도 됩니다.
글자만 고칠 때는 `template.html` 을 고치고 다시 만드세요.

```bash
python3 build.py screenshots
```

스크린샷을 다시 찍으려면 관리 화면을 1440px 폭으로 캡처해 `screenshots/` 의 같은 이름으로 덮어쓰면 됩니다
(`dashboard` · `appdetail` · `proxy` · `notify` — 나머지는 예비).

## 로컬에서 보기

```bash
python3 -m http.server 7900   # http://localhost:7900
```

## License

MIT
