
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-toolbox, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-diff-drive-controller";
  version = "4.39.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/diff_drive_controller/4.39.0-1.tar.gz";
    name = "4.39.0-1.tar.gz";
    sha256 = "6069c25b2514506bde7b7223ee0e083840f9d7b8db0042d6bca334c2e7c85b0c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-toolbox controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for a differential-drive mobile base.";
    license = with lib.licenses; [ asl20 ];
  };
}
