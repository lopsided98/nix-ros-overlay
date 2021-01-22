
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rmw, rmw-fastrtps-cpp, rosbag2-cpp, rosbag2-test-common, rosidl-runtime-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-converter-default-plugins";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2_converter_default_plugins/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "7ced6a7668fcf83e9c0d77f76152bf319616214a93711c0269c74ae57ef81c3e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rcpputils rmw-fastrtps-cpp rosbag2-cpp rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib rcpputils rmw rmw-fastrtps-cpp rosbag2-cpp rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing default plugins for format converters'';
    license = with lib.licenses; [ asl20 ];
  };
}
