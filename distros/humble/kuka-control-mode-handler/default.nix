
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-kuka-control-mode-handler";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_control_mode_handler/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "1fa9fba31739d53228f238ad3a652f8b80ed5332830fc67373e25bdb4492e1c1";
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
