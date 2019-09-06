
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rosbag2, pluginlib, ament-lint-common, ament-cmake-gmock, rosbag2-test-common, test-msgs, ament-cmake, poco-vendor, ament-index-cpp, rmw-fastrtps-cpp, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-converter-default-plugins";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_converter_default_plugins/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "f81c750d8772010a2e24e1157b451163f62689ef27841785c0d2260993de21de";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rosbag2 pluginlib poco-vendor ament-index-cpp rcutils rmw ];
  checkInputs = [ rosbag2 ament-lint-common rosbag2-test-common test-msgs ament-cmake-gmock rmw-fastrtps-cpp ament-lint-auto rcutils ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosbag2 pluginlib poco-vendor ament-index-cpp rcutils rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing default plugins for format converters'';
    license = with lib.licenses; [ asl20 ];
  };
}
