
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, rclcpp, ros-environment, ros-testing, rosbag2-storage }:
buildRosPackage {
  pname = "ros-humble-nebula-core-ros";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_core_ros/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "bd4c065f2cfe23ef9a48bddb6b20fa706d8c1be2b09807ddc3b982ef542acc80";
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
