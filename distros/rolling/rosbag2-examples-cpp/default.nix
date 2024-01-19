
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-examples-cpp";
  version = "0.24.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_examples_cpp/0.24.0-1.tar.gz";
    name = "0.24.0-1.tar.gz";
    sha256 = "77f05d65e6facf9022b712a3b8ea4816f70442acdbf31fa618d5477307ff86c3";
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
