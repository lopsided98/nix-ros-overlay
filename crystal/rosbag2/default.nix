
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2-test-common, shared-queues-vendor, rosidl-generator-cpp, rcutils, pluginlib, poco-vendor, ament-lint-common, ament-cmake, ament-cmake-gmock, test-msgs, rosidl-typesupport-introspection-cpp, rosidl-typesupport-cpp, ament-index-cpp, rosbag2-storage, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rosbag2";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "3fd6bf46e3462909038feed3bf7019b83efb38731b9b1d5c136f1ac230cfe002";
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
