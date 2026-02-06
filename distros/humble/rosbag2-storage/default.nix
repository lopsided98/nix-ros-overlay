
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-test-common, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-rosbag2-storage";
  version = "0.15.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_storage/0.15.16-1.tar.gz";
    name = "0.15.16-1.tar.gz";
    sha256 = "e9f4bd8c1bffac749556a5427f89670383491d14e829db531fdb1ada553f14bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 independent storage format to store serialized ROS2 messages";
    license = with lib.licenses; [ asl20 ];
  };
}
