
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2bag, rosbag2-test-common, rclcpp, std-msgs, rosbag2-bag-v2-plugins, ament-lint-common, ament-cmake, rosbag2, ros1-bridge, test-msgs, rosbag2-storage-default-plugins, rosbag2-converter-default-plugins, ament-cmake-gmock, ament-index-cpp, rosbag2-storage, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-tests";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_tests/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "c29de4e032b989e2d724d9270d9ed4aedd45354b9c989d99c7ff09265cafb577";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-index-cpp ];
  checkInputs = [ ros2bag rosbag2-test-common std-msgs rosbag2-bag-v2-plugins ament-cmake-gmock ament-lint-common rosbag2 test-msgs rosbag2-storage-default-plugins rosbag2-converter-default-plugins rosbag2-storage ros1-bridge rclcpp ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tests package for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
