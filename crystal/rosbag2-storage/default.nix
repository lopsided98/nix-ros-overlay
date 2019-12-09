
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, rcutils, pluginlib, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-gmock, rosbag2-test-common, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-storage";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_storage/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "e80c7e091dc84f99bcf69adad327232cb17f5d6263b6a7062fb0be4b2aadce3f";
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
