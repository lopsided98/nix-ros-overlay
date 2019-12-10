
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rcutils, rosbag2-test-common, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-storage";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2_storage/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "c42af32057286b35d82bbc53a8b039875dfb8dccda1217ed4541b02dab64ffe8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcutils yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 independent storage format to store serialized ROS2 messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
