
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, composition-interfaces, keyboard-handler, rclcpp, rclcpp-action, rclcpp-components, rcpputils, rcutils, rmw, rmw-implementation-cmake, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-interfaces, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-transport";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_transport/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "973eb8d647b8006b4edacf880d7d2b83cf09dbe2ea4777264716419979baa3a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-index-cpp ament-lint-auto ament-lint-common composition-interfaces rmw-implementation-cmake rosbag2-compression-zstd rosbag2-storage-default-plugins rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ keyboard-handler rclcpp rclcpp-action rclcpp-components rcpputils rcutils rmw rosbag2-compression rosbag2-cpp rosbag2-interfaces rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware";
    license = with lib.licenses; [ asl20 ];
  };
}
