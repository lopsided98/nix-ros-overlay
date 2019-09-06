
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ros2msg, test-msgs, rclpy, pythonPackages, ament-pep257, python3Packages, ament-copyright, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-ros2topic";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2topic/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "cc449c6bfc2f21af43c622ffa5e00142a6b7f5cbec5a6de6534d8b37b2c51c54";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-flake8 pythonPackages.pytest test-msgs ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ rclpy python3Packages.pyyaml ros2msg ros2cli ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
