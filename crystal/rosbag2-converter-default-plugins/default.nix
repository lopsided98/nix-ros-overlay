
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, poco-vendor, rcutils, rmw, rmw-fastrtps-dynamic-cpp, rosbag2, rosbag2-test-common, rosidl-generator-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-converter-default-plugins";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_converter_default_plugins/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "b35732ce4c7388c40c5038fe73a76a440328b6abe6b1c70be3f4f64e7711336b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rcutils rmw-fastrtps-dynamic-cpp rosbag2 rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib poco-vendor rcutils rmw rosbag2 rosidl-generator-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing default plugins for format converters'';
    license = with lib.licenses; [ asl20 ];
  };
}
