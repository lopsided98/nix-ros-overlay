
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-cpp, rosbag2-transport }:
buildRosPackage {
  pname = "ros-kilted-rosbag2-examples-cpp";
  version = "0.32.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/kilted/rosbag2_examples_cpp/0.32.0-2.tar.gz";
    name = "0.32.0-2.tar.gz";
    sha256 = "86915d31a5898d1bf48c52f540dfe6b4653ecd4e11c3997d0e8502606478b7dd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rosbag2-cpp rosbag2-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rosbag2 C++ API tutorials and examples";
    license = with lib.licenses; [ asl20 ];
  };
}
