
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-examples-cpp";
  version = "0.26.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_examples_cpp/0.26.11-1.tar.gz";
    name = "0.26.11-1.tar.gz";
    sha256 = "c1a19af6ab7a37a1e1eb6c5dbd122f7417bfe837d68f68cd8c5514ec6f1f9db8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rosbag2-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rosbag2 C++ API tutorials and examples";
    license = with lib.licenses; [ asl20 ];
  };
}
