
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rcutils, rmw-fastrtps-cpp, pluginlib, poco-vendor, ament-lint-common, ament-cmake, rosbag2, test-msgs, rmw, ament-cmake-gmock, ament-index-cpp, rosbag2-test-common, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-converter-default-plugins";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_converter_default_plugins/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "d76bc0f645e3e7558b61bb315ef42b9aca451ee57197847736fb157e6e528978";
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
