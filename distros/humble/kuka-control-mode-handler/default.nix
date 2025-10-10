
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-kuka-control-mode-handler";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_control_mode_handler/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3ff26bd611844042214e3eb25d6587dcbb2bf1332e1cd9714ee8dff74670742e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface kuka-drivers-core pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for setting the control mode of KUKA robots in runtime";
    license = with lib.licenses; [ asl20 ];
  };
}
