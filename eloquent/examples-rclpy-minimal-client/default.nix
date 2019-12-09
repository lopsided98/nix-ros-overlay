
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclpy-minimal-client";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclpy_minimal_client/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "9bcc01c33dcd0698898bc13f278cae0e0f01f60fc6861958c8904f5fc398ce63";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ example-interfaces std-msgs rclpy ];

  meta = {
    description = ''Examples of minimal service clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
