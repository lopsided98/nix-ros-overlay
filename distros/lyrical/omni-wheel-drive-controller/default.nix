
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, eigen, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-lyrical-omni-wheel-drive-controller";
  version = "6.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/omni_wheel_drive_controller/6.8.0-1.tar.gz";
    name = "6.8.0-1.tar.gz";
    sha256 = "5ff9e32ca9141bbc458412543b6aa98fc7d05fd514b408db3801e5e18f8d39db";
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
