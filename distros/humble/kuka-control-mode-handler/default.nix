
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-kuka-control-mode-handler";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_control_mode_handler/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e1d0ab61b9bec91d19c5bb5254a0fcbe49cb64c70ea263bd2d5f0a13509a9e69";
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
