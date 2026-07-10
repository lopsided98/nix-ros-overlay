
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, eigen, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-omni-wheel-drive-controller";
  version = "6.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/omni_wheel_drive_controller/6.8.0-1.tar.gz";
    name = "6.8.0-1.tar.gz";
    sha256 = "cf6a042eb6b9362b78c3e4094802a97a8111abe3ee37dbd340b753894630cd80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface eigen generate-parameter-library geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle realtime-tools tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A chainable controller for mobile robots with omnidirectional drive with three or
    more omni wheels.";
    license = with lib.licenses; [ asl20 ];
  };
}
