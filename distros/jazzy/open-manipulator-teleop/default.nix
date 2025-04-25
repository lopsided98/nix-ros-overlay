
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-teleop";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_teleop/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "4a6cb6c21459474bb63a0e52a72b587db3d7e4ee58f0d4eb8798485582291594";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "OpenMANIPULATOR teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
