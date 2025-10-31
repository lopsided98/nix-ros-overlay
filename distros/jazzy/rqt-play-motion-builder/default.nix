
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, class-loader, play-motion-builder, play-motion-builder-msgs, play-motion2-msgs, pluginlib, qt5, rclcpp, rclcpp-action, rqt-gui, rqt-gui-cpp, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-rqt-play-motion-builder";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/jazzy/rqt_play_motion_builder/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "f984b4c81c5926c7d22a82d812c7df339629de86f47c87538bb3211c9c63a35d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto class-loader qt5.qtbase ];
  propagatedBuildInputs = [ play-motion-builder play-motion-builder-msgs play-motion2-msgs pluginlib rclcpp rclcpp-action rqt-gui rqt-gui-cpp sensor-msgs urdf ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The rqt_play_motion_builder package, a front-end interface for play_motion_builder";
    license = with lib.licenses; [ asl20 ];
  };
}
