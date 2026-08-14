
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, boost, rclcpp, rclpy, yasmin, yasmin-msgs, yasmin-ros }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-viewer";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_viewer/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "d4d488b9a8014723be5c86c8e7382eb87696f1e29c80c836ef24202c43d1ebe5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ ament-index-cpp boost rclcpp rclpy yasmin yasmin-msgs yasmin-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN viewer for FSM";
    license = with lib.licenses; [ asl20 ];
  };
}
