from locust import HttpUser, task


class MyTasks(HttpUser):
    @task
    def load_users(self):
        self.client.get("/api/v1/users")
