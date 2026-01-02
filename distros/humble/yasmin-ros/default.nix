
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, example-interfaces, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, std-msgs, yasmin }:
buildRosPackage {
  pname = "ros-humble-yasmin-ros";
  version = "4.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_ros/4.2.2-1.tar.gz";
    name = "4.2.2-1.tar.gz";
    sha256 = "dbf14b2786ef195f7090ff09cad10fd110beef1be7a404f6d2e1706152676511";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest example-interfaces python3Packages.pytest python3Packages.pytestcov std-msgs ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rclpy yasmin ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) for ROS 2";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
