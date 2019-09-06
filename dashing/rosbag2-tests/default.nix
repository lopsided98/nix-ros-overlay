
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2, ament-cmake, ament-lint-common, rosbag2-converter-default-plugins, test-msgs, rosbag2-test-common, ament-cmake-gmock, ros2bag, rosbag2-storage-default-plugins, rclcpp, ament-index-cpp, std-msgs, ament-lint-auto, rosbag2-storage }:
buildRosPackage rec {
  pname = "ros-dashing-rosbag2-tests";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_tests/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "49295b8d7ddd6944c0c69d71db332f994f4fff44a1a538576f33507bb2833699";
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
