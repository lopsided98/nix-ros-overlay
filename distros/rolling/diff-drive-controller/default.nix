
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-diff-drive-controller";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/diff_drive_controller/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "7e28cc1ce4103f3418d4b03e6c21d089d91561bc27658a1eca983992a7fc3126";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface geometry-msgs hardware-interface nav-msgs rclcpp rclcpp-lifecycle rcpputils realtime-tools tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ asl20 ];
  };
}
