<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to right, #5d11cb, #2555fc);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .login-card {
            background: #fff;
            border-radius: 10px;
            padding: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .login-card h3 {
            font-weight: bold;
            margin-bottom: 1.5rem;
            color: #6a11cb;
            text-align: center;
        }
        .btn-primary {
            background: #2575fc;
            border: none;
            transition: background 0.3s ease;
        }
        .btn-primary:hover {
            background: #6a11cb;
        }
        .form-label {
            font-weight: bold;
            color: #6a11cb;
        }
        .text-danger {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="login-card">
                    <h3>Login Admin</h3>
                    <form action="{{ route('login.post') }}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" name="username" class="form-control" id="username" placeholder="Enter your username" required autofocus>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>
                        </div>
                        @if ($errors->has('loginError'))
                            <div class="text-danger text-center mb-3">{{ $errors->first('loginError') }}</div>
                        @endif
                        <button type="submit" class="btn btn-primary w-100">Login</button>
                        <br><br>
                        <a href="/" style="text-decoration: none;">Back to home</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
