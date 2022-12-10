
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, rosbag2-cpp, rosbag2-storage, rosbag2-test-common }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-compression";
  version = "0.18.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_compression/0.18.0-3.tar.gz";
    name = "0.18.0-3.tar.gz";
    sha256 = "2659b9e0bedbf3bba24de2df6240e5330583476e185217fbb064e977fd69afcb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rosbag2-test-common ];
  propagatedBuildInputs = [ rcpputils rcutils rosbag2-cpp rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compression implementations for rosbag2 bags and messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
