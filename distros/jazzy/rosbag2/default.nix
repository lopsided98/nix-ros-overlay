
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-tests, rosbag2-transport }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2";
  version = "0.26.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2/0.26.9-1.tar.gz";
    name = "0.26.9-1.tar.gz";
    sha256 = "631b52e27af523316098f2b618d1892a9318634ff9424489a06359a6ea8391c1";
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
