
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-compression, rosbag2-cpp, rosbag2-transport }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-examples-cpp";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_examples_cpp/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "7716c7c3614a7ebf25766b7a06ba4418c8c6fb67ef6dedf34f763fd99376ea87";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rosbag2-compression rosbag2-cpp rosbag2-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rosbag2 C++ API tutorials and examples";
    license = with lib.licenses; [ asl20 ];
  };
}
