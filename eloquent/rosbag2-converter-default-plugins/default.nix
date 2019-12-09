
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rcutils, rmw-fastrtps-cpp, pluginlib, poco-vendor, ament-lint-common, ament-cmake, rosbag2, test-msgs, rmw, ament-cmake-gmock, ament-index-cpp, rosbag2-test-common, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-converter-default-plugins";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2_converter_default_plugins/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "6f039f6deecc718950943206535862a419ec9a65aa41b30aa74eac241e77a67a";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rcutils rmw-fastrtps-cpp pluginlib poco-vendor rosbag2 rmw ament-index-cpp ];
  checkInputs = [ rcutils rmw-fastrtps-cpp ament-lint-common rosbag2 test-msgs ament-cmake-gmock rosbag2-test-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-cpp rcutils rmw-fastrtps-cpp pluginlib poco-vendor rosbag2 rmw ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing default plugins for format converters'';
    license = with lib.licenses; [ asl20 ];
  };
}
