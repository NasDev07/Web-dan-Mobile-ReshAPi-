<nav class="navbar navbar-expand-lg navbar-light bg-info sticky-top">
    <div class="container">
        <a class="navbar-brand" href="/">NasDev</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/pegawai">Absen</a>
                </li>
            </ul>
            <div class="row g-3 align-items-center">
                <div class="col-auto">
                    <form action="/pegawai" method="GET">
                        <input type="search" id="inputPassword6" name="search" class="form-control"
                            aria-describedby="passwordHelpInline">
                    </form>
                </div>
            </div>
        </div>
    </div>
</nav>