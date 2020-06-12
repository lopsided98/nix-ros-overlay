
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2bag, rosbag2-compression, rosbag2-converter-default-plugins, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-tests, rosbag2-transport, shared-queues-vendor, sqlite3-vendor }:
buildRosPackage {
  pname = "ros-foxy-rosbag2";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "f38d513b9131fb8a8605fe3267e1b953ba6ac971b92aaf1a2c40a5728bc979d3";
  };

  buildType = "ament_cmake";
  checkInputs = [ rosbag2-test-common rosbag2-tests ];
  propagatedBuildInputs = [ ros2bag rosbag2-compression rosbag2-converter-default-plugins rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins rosbag2-transport shared-queues-vendor sqlite3-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package for rosbag2 related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
