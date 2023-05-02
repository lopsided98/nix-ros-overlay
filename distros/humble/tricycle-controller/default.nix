
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, std-srvs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-humble-tricycle-controller";
  version = "2.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/tricycle_controller/2.17.3-1.tar.gz";
    name = "2.17.3-1.tar.gz";
    sha256 = "9641ac401acf1e3d8f34c52dda25c42fb65996162f03e33e27ea75a98711fcd2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ ackermann-msgs backward-ros controller-interface geometry-msgs hardware-interface nav-msgs rclcpp rclcpp-lifecycle rcpputils realtime-tools std-srvs tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for a tricycle drive mobile base'';
    license = with lib.licenses; [ asl20 ];
  };
}
