
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, zstd-vendor }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-compression";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2_compression/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "2cad09b9bde49dad3031f280746729213f9f3facc0da10efaa4f8ef32ef3e53c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common ];
  propagatedBuildInputs = [ rcpputils rcutils rosbag2-cpp rosbag2-storage zstd-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compression implementations for rosbag2 bags and messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
