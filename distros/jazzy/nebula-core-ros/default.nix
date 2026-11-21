
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, rclcpp, ros-environment, ros-testing, rosbag2-storage, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-core-ros";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_core_ros/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "00509ad62619432a00fbb38cb20d5d6018ac1ba51f743c9bf6c63055522c8a31";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ros-testing ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater nebula-core-common rclcpp rosbag2-storage sensor-msgs ];
  nativeBuildInputs = [ autoware-cmake ros-environment ros-testing ];

  meta = {
    description = "Nebula ROS Base Libraries";
    license = with lib.licenses; [ asl20 ];
  };
}
