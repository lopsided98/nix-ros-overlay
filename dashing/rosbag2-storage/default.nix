
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, rcutils, pluginlib, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-gmock, rosbag2-test-common, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-storage";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_storage/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "838ac4469065b182f025f8024990f49dd3dbd0e8b5069746a8602f506958a7ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib yaml-cpp-vendor rcutils ];
  checkInputs = [ ament-lint-common ament-lint-auto ament-cmake-gmock rosbag2-test-common ament-cmake-gtest ];
  propagatedBuildInputs = [ pluginlib yaml-cpp-vendor rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 independent storage format to store serialized ROS2 messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
