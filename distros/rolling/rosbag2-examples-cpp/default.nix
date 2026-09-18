
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-compression, rosbag2-cpp, rosbag2-transport }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-examples-cpp";
  version = "0.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_examples_cpp/0.35.0-1.tar.gz";
    name = "0.35.0-1.tar.gz";
    sha256 = "b28ba823f0fc3c58d55bfb1712b3989686bc3bc9e99f4ec55d328de2d24b970e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rosbag2-compression rosbag2-cpp rosbag2-transport ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "rosbag2 C++ API tutorials and examples";
    license = with lib.licenses; [ asl20 ];
  };
}
