
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-test-common, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-storage";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/rosbag2_storage/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "8f6cf0dac17220bbbdf6d6a72bc66146d3944a78e769dea6c6e171869c257769";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 independent storage format to store serialized ROS2 messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
