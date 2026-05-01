
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, launch, lifecycle-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-launch-ros";
  version = "0.29.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/lyrical/launch_ros/0.29.8-1.tar.gz";
    name = "0.29.8-1.tar.gz";
    sha256 = "f83ce381d5a72c5d237ec5f7c1603a4af5ef1aa7109b65b53055d8f39068c8c4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs python3Packages.osrf-pycommon python3Packages.pyyaml rclpy ];

  meta = {
    description = "ROS specific extensions to the launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
