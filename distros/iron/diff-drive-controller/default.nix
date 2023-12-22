
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-iron-diff-drive-controller";
  version = "3.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/diff_drive_controller/3.19.2-1.tar.gz";
    name = "3.19.2-1.tar.gz";
    sha256 = "b02516678be2e1224f0b03cf08f0fe8f0d460d587cf41d1ef801f30225674059";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ asl20 ];
  };
}
