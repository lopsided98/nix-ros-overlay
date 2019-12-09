
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2-test-common, shared-queues-vendor, rosidl-generator-cpp, rcutils, pluginlib, poco-vendor, ament-lint-common, ament-cmake, ament-cmake-gmock, test-msgs, rosidl-typesupport-introspection-cpp, rosidl-typesupport-cpp, ament-index-cpp, rosbag2-storage, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosbag2";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "93d75ae889fc71f5ca3eba7ecb8beed76e457f13e6fe284032e3289f06424f3e";
  };

  buildType = "ament_cmake";
  buildInputs = [ shared-queues-vendor rosidl-generator-cpp rcutils pluginlib poco-vendor rosidl-typesupport-introspection-cpp rosidl-typesupport-cpp ament-index-cpp rosbag2-storage ];
  checkInputs = [ ament-lint-common test-msgs ament-cmake-gmock rosbag2-test-common ament-lint-auto ];
  propagatedBuildInputs = [ shared-queues-vendor rosidl-generator-cpp rcutils pluginlib poco-vendor rosidl-typesupport-introspection-cpp rosidl-typesupport-cpp ament-index-cpp rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSBag2 client library'';
    license = with lib.licenses; [ asl20 ];
  };
}
