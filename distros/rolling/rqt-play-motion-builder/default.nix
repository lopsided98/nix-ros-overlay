
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, class-loader, play-motion-builder, play-motion-builder-msgs, play-motion2-msgs, pluginlib, qt5, rclcpp, rclcpp-action, rqt-gui, rqt-gui-cpp, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-rolling-rqt-play-motion-builder";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/rolling/rqt_play_motion_builder/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "3365094a120e14b5e87b2b8b47d6b936e1e9c3b4f0f179c6e78a66170f5a2b15";
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
