
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rosbag2, pluginlib, ament-lint-common, ament-cmake-gmock, rosbag2-test-common, test-msgs, ament-cmake, poco-vendor, ament-index-cpp, rmw-fastrtps-cpp, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-converter-default-plugins";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_converter_default_plugins/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "a03ec02645c25fc68bdd69431abddac2bd2d1c0506ed94a9e19b3120cb9574dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rosbag2 pluginlib poco-vendor ament-index-cpp rmw-fastrtps-cpp rcutils rmw ];
  checkInputs = [ rosbag2 ament-lint-common rosbag2-test-common test-msgs ament-cmake-gmock rmw-fastrtps-cpp ament-lint-auto rcutils ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosbag2 pluginlib poco-vendor ament-index-cpp rmw-fastrtps-cpp rcutils rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing default plugins for format converters'';
    license = with lib.licenses; [ asl20 ];
  };
}
