
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake, ament-cmake-gmock, backward-ros, builtin-interfaces, controller-interface, controller-manager, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, std-srvs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-iron-tricycle-controller";
  version = "3.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/tricycle_controller/3.21.0-1.tar.gz";
    name = "3.21.0-1.tar.gz";
    sha256 = "722d173cfb92e1d5da3a92feecfb052e8abf2cc3f9e330bcb69a1dd8cb62821f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ ackermann-msgs backward-ros builtin-interfaces controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools std-srvs tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for a tricycle drive mobile base'';
    license = with lib.licenses; [ asl20 ];
  };
}
