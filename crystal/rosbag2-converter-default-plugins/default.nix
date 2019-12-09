
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rcutils, pluginlib, poco-vendor, rmw-fastrtps-dynamic-cpp, ament-lint-common, ament-cmake, rosbag2, test-msgs, rmw, ament-cmake-gmock, ament-index-cpp, rosbag2-test-common, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-converter-default-plugins";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_converter_default_plugins/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "b35732ce4c7388c40c5038fe73a76a440328b6abe6b1c70be3f4f64e7711336b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rcutils pluginlib poco-vendor rosbag2 rmw ament-index-cpp ];
  checkInputs = [ rcutils rmw-fastrtps-dynamic-cpp ament-lint-common rosbag2 test-msgs ament-cmake-gmock rosbag2-test-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-cpp rcutils pluginlib poco-vendor rosbag2 rmw ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing default plugins for format converters'';
    license = with lib.licenses; [ asl20 ];
  };
}
