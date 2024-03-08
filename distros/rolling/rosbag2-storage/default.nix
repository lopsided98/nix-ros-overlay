
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-test-common, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage";
  version = "0.24.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage/0.24.0-2.tar.gz";
    name = "0.24.0-2.tar.gz";
    sha256 = "8687f460a3da765c4952daf55056ec85735b44b00bee3f149857f9f4f90a8d2d";
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
