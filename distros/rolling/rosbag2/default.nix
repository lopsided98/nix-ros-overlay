
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-tests, rosbag2-transport }:
buildRosPackage {
  pname = "ros-rolling-rosbag2";
  version = "0.34.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2/0.34.0-1.tar.gz";
    name = "0.34.0-1.tar.gz";
    sha256 = "e166005477f501dbf07144ecb5215a91ae4ba95d575ad9d7e01a8efb2b910473";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rosbag2-test-common rosbag2-tests ];
  propagatedBuildInputs = [ ros2bag rosbag2-compression rosbag2-compression-zstd rosbag2-cpp rosbag2-py rosbag2-storage rosbag2-storage-default-plugins rosbag2-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package for rosbag2 related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
