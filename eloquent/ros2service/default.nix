
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ros-testing, ament-copyright, rosidl-runtime-py, pythonPackages, test-msgs, ament-xmllint, ros2cli, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ros2service";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2service/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "2df820e535ef2afe301ad6ced303d91ad49e32ef9aa17405c42f8880748446ab";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rclpy ];
  checkInputs = [ ament-copyright ros-testing test-msgs ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ rosidl-runtime-py ros2cli python3Packages.pyyaml rclpy ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
