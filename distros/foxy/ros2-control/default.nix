
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, hardware-interface, test-robot-hardware, transmission-interface }:
buildRosPackage {
  pname = "ros-foxy-ros2-control";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/bmagyar/ros2_control-release/archive/release/foxy/ros2_control/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1e2c0979a3b1f0dcd111cc70f4a287a678baab773641aaf689b3896bd28d1ed0";
  };

  buildType = "ament_cmake";
  checkInputs = [ test-robot-hardware ];
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
