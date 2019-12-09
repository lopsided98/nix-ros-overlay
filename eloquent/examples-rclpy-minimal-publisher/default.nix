
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclpy-minimal-publisher";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclpy_minimal_publisher/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "d5d950ed979c0b6ad8dca845ce6a153dc29dbc5aef70e8ce295d8efda2e0c586";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ std-msgs rclpy ];

  meta = {
    description = ''Examples of minimal publishers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
