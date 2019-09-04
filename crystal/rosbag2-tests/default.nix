
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2, ament-cmake, ament-lint-common, ament-cmake-gmock, rosbag2-converter-default-plugins, test-msgs, rosbag2-bag-v2-plugins, rosbag2-test-common, ros2bag, rosbag2-storage-default-plugins, ros1-bridge, rclcpp, ament-index-cpp, std-msgs, ament-lint-auto, rosbag2-storage }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-tests";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_tests/0.0.7-0.tar.gz;
    sha256 = "c29de4e032b989e2d724d9270d9ed4aedd45354b9c989d99c7ff09265cafb577";
  };

  buildInputs = [ ament-index-cpp ];
  checkInputs = [ rosbag2 ament-lint-common rosbag2-converter-default-plugins test-msgs rosbag2-bag-v2-plugins rosbag2-test-common ament-cmake-gmock ros2bag rosbag2-storage-default-plugins ros1-bridge rclcpp std-msgs ament-lint-auto rosbag2-storage ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tests package for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
