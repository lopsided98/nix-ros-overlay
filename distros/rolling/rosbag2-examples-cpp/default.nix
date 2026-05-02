
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-compression, rosbag2-cpp, rosbag2-transport }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-examples-cpp";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_examples_cpp/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "a9cc9de934408ba1481fe861c7d2696e8634a7be85206398680127f4676f9f27";
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
