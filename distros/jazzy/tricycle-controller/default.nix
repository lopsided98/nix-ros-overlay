
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake, ament-cmake-gmock, backward-ros, builtin-interfaces, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-cmake, ros2-control-test-assets, std-srvs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tricycle-controller";
  version = "4.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/tricycle_controller/4.29.0-1.tar.gz";
    name = "4.29.0-1.tar.gz";
    sha256 = "e4d3ed74e2a5ba48f346804da4a6358a884986fbac6ad50d3effa88cd7161b9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ ackermann-msgs backward-ros builtin-interfaces controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools std-srvs tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for a tricycle drive mobile base";
    license = with lib.licenses; [ asl20 ];
  };
}
