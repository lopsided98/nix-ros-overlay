
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager-msgs, effort-controllers, hardware-interface, joint-group-impedance-controller, joint-state-broadcaster, joint-trajectory-controller, kuka-control-mode-handler, kuka-drivers-core, kuka-event-broadcaster, kuka-external-control-sdk, kuka-lbr-iisy-support, launch-testing-ament-cmake, pluginlib, ros2-control, ros2lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-humble-kuka-iiqka-eac-driver";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_iiqka_eac_driver/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "a660536dc4b0f28db65881cca2a6ce3e63fe77a84ee6787041edecbecf13d7e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ros2lifecycle ];
  propagatedBuildInputs = [ controller-manager-msgs effort-controllers hardware-interface joint-group-impedance-controller joint-state-broadcaster joint-trajectory-controller kuka-control-mode-handler kuka-drivers-core kuka-event-broadcaster kuka-external-control-sdk kuka-lbr-iisy-support pluginlib ros2-control std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS2 hardware interface for use with KUKA iiQKA OS";
    license = with lib.licenses; [ asl20 ];
  };
}
