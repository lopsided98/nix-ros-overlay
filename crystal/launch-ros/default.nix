
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osrf-pycommon, ament-flake8, rclpy, launch, pythonPackages, lifecycle-msgs, ament-pep257, python3Packages, ament-copyright, ament-index-python }:
buildRosPackage {
  pname = "ros-crystal-launch-ros";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/launch-release/archive/release/crystal/launch_ros/0.7.4-0.tar.gz;
    sha256 = "480257659d78e901745518c17ae0e35e6def35dbb7bc7a1d5867a3f1f3f08bbb";
  };

  buildType = "ament_python";
  buildInputs = [ osrf-pycommon rclpy launch python3Packages.pyyaml lifecycle-msgs ament-index-python ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ osrf-pycommon rclpy launch python3Packages.pyyaml lifecycle-msgs ament-index-python ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
