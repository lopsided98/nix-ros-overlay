
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, poco-vendor, rcutils, rosbag2-storage, rosbag2-test-common, rosidl-generator-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, shared-queues-vendor, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "6db9919d3b5410e05b1a2557ef26f9fa2d799bc38ebfb183593f3381d41550ac";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib poco-vendor rcutils rosbag2-storage rosidl-generator-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSBag2 client library'';
    license = with lib.licenses; [ asl20 ];
  };
}
