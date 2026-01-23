
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, launch, lifecycle-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-launch-ros";
  version = "0.29.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_ros/0.29.5-1.tar.gz";
    name = "0.29.5-1.tar.gz";
    sha256 = "0bb33bb990db69542f7fc6ac9db570cf5794ea195c8b9af23614625f488292fc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs python3Packages.osrf-pycommon python3Packages.pyyaml rclpy ];

  meta = {
    description = "ROS specific extensions to the launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
