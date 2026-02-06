
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-interface, controller-manager, eigen, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-omni-wheel-drive-controller";
  version = "4.37.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/omni_wheel_drive_controller/4.37.0-1.tar.gz";
    name = "4.37.0-1.tar.gz";
    sha256 = "eed0532d6c8949a1052aee26dff679ddec574f98abe67419ebee2c5d7a62d8fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ controller-interface eigen generate-parameter-library geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle realtime-tools tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A chainable controller for mobile robots with omnidirectional drive with three or
    more omni wheels.";
    license = with lib.licenses; [ asl20 ];
  };
}
