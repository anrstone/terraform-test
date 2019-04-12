resource "google_compute_instance" "firstserver" {
  name         = "thefirstserver"
  machine_type = "n1-standard-1"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-1604-lts"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.dev-subnet.name}"

    access_config {}
  }

  metadata {
    foo = "bar"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

resource "aws_instance" "secondserver" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags {
    Name = "identifiertag"
  }

  subnet_id = "${aws_subnet.subnet2.id}"
}
