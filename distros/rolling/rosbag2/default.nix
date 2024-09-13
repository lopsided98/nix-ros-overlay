
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-tests, rosbag2-transport, shared-queues-vendor }:
buildRosPackage {
  pname = "ros-rolling-rosbag2";
  version = "0.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2/0.29.0-1.tar.gz";
    name = "0.29.0-1.tar.gz";
    sha256 = "ed157bafc9ffac036c091cee751936bd5b13f378d5802209933686ef5eef05b4";
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
