
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-tests, rosbag2-transport, shared-queues-vendor }:
buildRosPackage {
  pname = "ros-iron-rosbag2";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "384c91a6428ccff1d0b0e444f71f75e227be49f51696c09d70126fde54cc4bb1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rosbag2-test-common rosbag2-tests ];
  propagatedBuildInputs = [ ros2bag rosbag2-compression rosbag2-compression-zstd rosbag2-cpp rosbag2-py rosbag2-storage rosbag2-storage-default-plugins rosbag2-transport shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package for rosbag2 related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
