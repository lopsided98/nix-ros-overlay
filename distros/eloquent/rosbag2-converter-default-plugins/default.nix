
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, poco-vendor, rcutils, rmw, rmw-fastrtps-cpp, rosbag2, rosbag2-test-common, rosidl-generator-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-converter-default-plugins";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2_converter_default_plugins/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "6f039f6deecc718950943206535862a419ec9a65aa41b30aa74eac241e77a67a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rcutils rmw-fastrtps-cpp rosbag2 rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib poco-vendor rcutils rmw rmw-fastrtps-cpp rosbag2 rosidl-generator-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing default plugins for format converters'';
    license = with lib.licenses; [ asl20 ];
  };
}
