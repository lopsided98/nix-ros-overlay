
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osrf-pycommon, ament-flake8, rclpy, composition-interfaces, pythonPackages, launch, lifecycle-msgs, ament-pep257, python3Packages, ament-copyright, ament-index-python }:
buildRosPackage {
  pname = "ros-dashing-launch-ros";
  version = "0.8.5-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/launch_ros/0.8.5-1.tar.gz;
    sha256 = "6625f0422273165b82d6622d1bf629965bf2a0c1fbdd0783a28c3a6d1ec0720a";
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
