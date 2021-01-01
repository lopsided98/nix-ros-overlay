
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, poco-vendor, rcutils, rmw, rmw-fastrtps-cpp, rosbag2, rosbag2-test-common, rosidl-generator-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-converter-default-plugins";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_converter_default_plugins/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "d76bc0f645e3e7558b61bb315ef42b9aca451ee57197847736fb157e6e528978";
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
