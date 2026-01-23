
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages, rclcpp, rclpy, yasmin, yasmin-msgs, yasmin-ros }:
buildRosPackage {
  pname = "ros-kilted-yasmin-viewer";
  version = "4.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_viewer/4.2.4-1.tar.gz";
    name = "4.2.4-1.tar.gz";
    sha256 = "3bffff3182701e0f3ba198be2ce8d5b058c64c8482f661dad9633adbbbce9e4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ python3Packages.expiringdict python3Packages.flask python3Packages.flask-socketio python3Packages.waitress rclcpp rclpy yasmin yasmin-msgs yasmin-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN viewer for FSM";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
