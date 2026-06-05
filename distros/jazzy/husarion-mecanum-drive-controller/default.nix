
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-toolbox, controller-interface, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-husarion-mecanum-drive-controller";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/husarion/husarion_controllers-release/archive/release/jazzy/husarion_mecanum_drive_controller/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "9223b73e4f4de1df6c68c2040aa8bb0fc78be21ca5111873f988d30fefe599e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  propagatedBuildInputs = [ control-toolbox controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for a mecanum drive mobile base.";
    license = with lib.licenses; [ asl20 ];
  };
}
