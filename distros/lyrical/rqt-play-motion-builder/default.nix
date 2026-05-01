
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, class-loader, play-motion-builder, play-motion-builder-msgs, play-motion2-msgs, pluginlib, qt5, rclcpp, rclcpp-action, rqt-gui, rqt-gui-cpp, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-lyrical-rqt-play-motion-builder";
  version = "1.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/lyrical/rqt_play_motion_builder/1.4.1-3.tar.gz";
    name = "1.4.1-3.tar.gz";
    sha256 = "46d6c20be71a1bef55b246d683559d949accba5cf53e52435f3661b3a5d1be4f";
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
