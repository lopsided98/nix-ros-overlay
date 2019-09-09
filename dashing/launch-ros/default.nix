
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osrf-pycommon, ament-flake8, rclpy, composition-interfaces, pythonPackages, launch, lifecycle-msgs, ament-pep257, python3Packages, ament-copyright, ament-index-python }:
buildRosPackage {
  pname = "ros-dashing-launch-ros";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/launch_ros/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "c68c2c313eed20ddf561a2a97acecdc177461f4fc44fbd3e6c42c47a3cfdea00";
  };

  buildType = "ament_python";
  buildInputs = [ osrf-pycommon rclpy launch composition-interfaces python3Packages.pyyaml lifecycle-msgs ament-index-python ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ osrf-pycommon rclpy launch composition-interfaces python3Packages.pyyaml lifecycle-msgs ament-index-python ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
