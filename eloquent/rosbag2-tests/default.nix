
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2bag, rosbag2-test-common, std-msgs, ament-lint-common, ament-cmake, rosbag2, test-msgs, rosbag2-storage-default-plugins, rosbag2-converter-default-plugins, rosbag2-storage, ament-cmake-gmock, ament-index-cpp, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-tests";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2_tests/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "08e8d3e3ab0ce3a08df0247341b1dd98cbbc7b296b1e558944eb1b7567572dbd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-index-cpp ];
  checkInputs = [ ros2bag rosbag2-test-common std-msgs ament-lint-common rosbag2 test-msgs rosbag2-storage-default-plugins rosbag2-converter-default-plugins rosbag2-storage ament-cmake-gmock rclcpp ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tests package for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
