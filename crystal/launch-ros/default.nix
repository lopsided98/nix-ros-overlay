
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, launch, osrf-pycommon, ament-index-python, pythonPackages, ament-pep257, rclpy, ament-flake8, lifecycle-msgs }:
buildRosPackage {
  pname = "ros-crystal-launch-ros";
  version = "0.7.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/crystal/launch_ros/0.7.4-0.tar.gz";
    name = "0.7.4-0.tar.gz";
    sha256 = "480257659d78e901745518c17ae0e35e6def35dbb7bc7a1d5867a3f1f3f08bbb";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyyaml launch osrf-pycommon rclpy ament-index-python lifecycle-msgs ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.pyyaml launch osrf-pycommon rclpy ament-index-python lifecycle-msgs ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
