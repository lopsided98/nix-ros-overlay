
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, boost, rclcpp, rclpy, yasmin, yasmin-msgs, yasmin-ros }:
buildRosPackage {
  pname = "ros-rolling-yasmin-viewer";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_viewer/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "7058a9c4544f6d0da5b2e45ab0e5cb9b744b10a9173de66a7faf0bf20fee86b9";
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
