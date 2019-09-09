
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2, ament-cmake, ament-lint-common, rosbag2-converter-default-plugins, test-msgs, rosbag2-test-common, ament-cmake-gmock, ros2bag, rosbag2-storage-default-plugins, rclcpp, ament-index-cpp, std-msgs, ament-lint-auto, rosbag2-storage }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-tests";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_tests/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "575682a9c05aef3ce7ac90a5a1ca3fe147438e44d0d2b7837a86c7bfd8b1f6d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-index-cpp ];
  checkInputs = [ rosbag2 ament-lint-common rosbag2-converter-default-plugins test-msgs rosbag2-test-common ament-cmake-gmock ros2bag rosbag2-storage-default-plugins rclcpp std-msgs ament-lint-auto rosbag2-storage ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tests package for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
