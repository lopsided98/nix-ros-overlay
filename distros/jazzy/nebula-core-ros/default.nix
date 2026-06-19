
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, rclcpp, ros-environment, ros-testing, rosbag2-storage }:
buildRosPackage {
  pname = "ros-jazzy-nebula-core-ros";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_core_ros/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "9576d41fef1f61b8dd3bee85e91fe89b3f165d481c9415b99ec7e8eddb71e8bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ros-testing ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater nebula-core-common rclcpp rosbag2-storage ];
  nativeBuildInputs = [ autoware-cmake ros-environment ros-testing ];

  meta = {
    description = "Nebula ROS Base Libraries";
    license = with lib.licenses; [ asl20 ];
  };
}
