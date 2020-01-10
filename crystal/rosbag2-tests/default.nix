
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, rclcpp, ros1-bridge, ros2bag, rosbag2, rosbag2-bag-v2-plugins, rosbag2-converter-default-plugins, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-tests";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_tests/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "c29de4e032b989e2d724d9270d9ed4aedd45354b9c989d99c7ff09265cafb577";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp ros1-bridge ros2bag rosbag2 rosbag2-bag-v2-plugins rosbag2-converter-default-plugins rosbag2-storage rosbag2-storage-default-plugins rosbag2-test-common std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tests package for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
