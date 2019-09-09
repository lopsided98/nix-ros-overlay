
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, pluginlib, ament-lint-common, rosbag2-test-common, ament-cmake-gmock, ament-cmake, ament-cmake-gtest, ament-lint-auto, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-storage";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_storage/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "71d612a0ab18884e4ff575da19d11195db9a6edca7c25c2f59ab406874273d11";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor rcutils pluginlib ];
  checkInputs = [ ament-lint-common ament-cmake-gmock rosbag2-test-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ yaml-cpp-vendor rcutils pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 independent storage format to store serialized ROS2 messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
