
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, controller-manager-msgs, effort-controllers, hardware-interface, joint-group-impedance-controller, joint-state-broadcaster, joint-trajectory-controller, kuka-control-mode-handler, kuka-drivers-core, kuka-event-broadcaster, kuka-external-control-sdk, kuka-lbr-iisy-support, launch-testing-ament-cmake, pluginlib, ros2lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-kuka-iiqka-eac-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_iiqka_eac_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "ac203a9863830bce94f4fd7cddfcce9a4cd4b560c5d6d4cbddb2596f1b10f2ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ros2lifecycle ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs effort-controllers hardware-interface joint-group-impedance-controller joint-state-broadcaster joint-trajectory-controller kuka-control-mode-handler kuka-drivers-core kuka-event-broadcaster kuka-external-control-sdk kuka-lbr-iisy-support pluginlib std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS2 hardware interface for use with KUKA iiQKA OS";
    license = with lib.licenses; [ asl20 ];
  };
}
