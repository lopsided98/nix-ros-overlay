
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-tests, rosbag2-transport, shared-queues-vendor, sqlite3-vendor }:
buildRosPackage {
  pname = "ros-humble-rosbag2";
  version = "0.15.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2/0.15.5-1.tar.gz";
    name = "0.15.5-1.tar.gz";
    sha256 = "347b5d2153c83d3c7e697e1ce323d7783293e7e4a0641f14b8d068b08e3a5b26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rosbag2-test-common rosbag2-tests ];
  propagatedBuildInputs = [ ros2bag rosbag2-compression rosbag2-compression-zstd rosbag2-cpp rosbag2-py rosbag2-storage rosbag2-storage-default-plugins rosbag2-transport shared-queues-vendor sqlite3-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package for rosbag2 related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
