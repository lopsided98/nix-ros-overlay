
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, eigen, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-lyrical-omni-wheel-drive-controller";
  version = "6.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/omni_wheel_drive_controller/6.7.0-1.tar.gz";
    name = "6.7.0-1.tar.gz";
    sha256 = "b79e3b49161b020433ce53cbe50ae6ae0499225daf9bb80ce22679fcb13bbcbc";
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
