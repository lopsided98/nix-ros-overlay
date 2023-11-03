
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-cpp }:
buildRosPackage {
  pname = "ros-iron-rosbag2-examples-cpp";
  version = "0.22.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_examples_cpp/0.22.4-1.tar.gz";
    name = "0.22.4-1.tar.gz";
    sha256 = "81c05b9a865a3fdb5340ddfe17031f9bc4cd3051175fb82e2f0b6ddace19aef8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rosbag2-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rosbag2 C++ API tutorials and examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
