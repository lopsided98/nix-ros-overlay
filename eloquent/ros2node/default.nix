
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-testing, ament-copyright, pythonPackages, test-msgs, ament-xmllint, ros2cli, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ros2node";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2node/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "051db62d9d67ae9934c9bc46d76c7b5e7e24f670cb48147dd95240d617192a4e";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright ros-testing test-msgs ament-xmllint ament-pep257 rclpy pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The node command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
