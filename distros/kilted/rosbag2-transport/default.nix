
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, composition-interfaces, keyboard-handler, rclcpp, rclcpp-action, rclcpp-components, rcpputils, rcutils, rmw, rmw-implementation-cmake, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-interfaces, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-rosbag2-transport";
  version = "0.32.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/kilted/rosbag2_transport/0.32.0-2.tar.gz";
    name = "0.32.0-2.tar.gz";
    sha256 = "2cafa67b6d9e5c013b4f198b675da806df1a8f4066c37a60bd82deab95d3caa2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-index-cpp ament-lint-auto ament-lint-common composition-interfaces rmw-implementation-cmake rosbag2-compression-zstd rosbag2-storage-default-plugins rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ keyboard-handler rclcpp rclcpp-action rclcpp-components rcpputils rcutils rmw rosbag2-compression rosbag2-cpp rosbag2-interfaces rosbag2-storage yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware";
    license = with lib.licenses; [ asl20 ];
  };
}
