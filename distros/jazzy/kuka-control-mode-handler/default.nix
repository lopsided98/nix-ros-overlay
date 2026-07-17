
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-kuka-control-mode-handler";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_control_mode_handler/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "e2df995454097f2772abb3c1815b97508487da1374eb86c953a80734aa17ace5";
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
