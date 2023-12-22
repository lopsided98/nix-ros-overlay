
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake, ament-cmake-gmock, backward-ros, builtin-interfaces, controller-interface, controller-manager, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, std-srvs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-humble-tricycle-controller";
  version = "2.30.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/tricycle_controller/2.30.0-1.tar.gz";
    name = "2.30.0-1.tar.gz";
    sha256 = "f82dac8d22c4ec9f5ec2d291e32ae67a35670a8855aee17a2a6cbd6425291a51";
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
