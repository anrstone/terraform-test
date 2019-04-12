resource "google_compute_subnetwork" "dev-subnet" {
  ip_cidr_range = "10.0.1.0/24"
  name          = "devsubnet"
  network       = "${google_compute_network.our_development_network.name}"
}

resource "aws_subnet" "subnet1" {
  cidr_block           = "${cidrsubnet(aws_vpc.environment-example-three.cidr_block, 3, 1)}"
  vpc_id               = "${aws_vpc.environment-example-three.id}"
  availability_zone_id = "euw1-az1"
}

resource "aws_subnet" "subnet2" {
  cidr_block           = "${cidrsubnet(aws_vpc.environment-example-three.cidr_block, 2, 2)}"
  vpc_id               = "${aws_vpc.environment-example-three.id}"
  availability_zone_id = "euw1-az2"
}

resource "aws_security_group" "subnetsecurity" {
  vpc_id = "${aws_vpc.environment-example-three.id}"

  ingress {
    cidr_blocks = [
      "${aws_vpc.environment-example-three.cidr_block}",
    ]

    from_port = 80
    protocol  = "tcp"
    to_port   = 80
  }
}
