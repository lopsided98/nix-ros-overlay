
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-tests, rosbag2-transport, shared-queues-vendor }:
buildRosPackage {
  pname = "ros-rolling-rosbag2";
  version = "0.26.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2/0.26.1-1.tar.gz";
    name = "0.26.1-1.tar.gz";
    sha256 = "ed7f4ded499b9d4296fef94176e1d5a4113a2739317aea772912ca205ca8b57d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rosbag2-test-common rosbag2-tests ];
  propagatedBuildInputs = [ ros2bag rosbag2-compression rosbag2-compression-zstd rosbag2-cpp rosbag2-py rosbag2-storage rosbag2-storage-default-plugins rosbag2-transport shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package for rosbag2 related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
