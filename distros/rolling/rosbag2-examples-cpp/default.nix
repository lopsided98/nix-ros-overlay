
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-cpp, rosbag2-transport }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-examples-cpp";
  version = "0.31.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_examples_cpp/0.31.0-1.tar.gz";
    name = "0.31.0-1.tar.gz";
    sha256 = "c6587057ab2d896ff16d9d88d6e79150303c0474fdd166958d108d82996c0bc1";
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
