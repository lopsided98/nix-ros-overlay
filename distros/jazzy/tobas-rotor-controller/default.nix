
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-drone-msgs-adapter, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rotor-controller";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rotor_controller/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "e606c375c2bd0d42d7721e12505d514c4c9f832245ce44f25de01dd53487917e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ std-srvs tobas-drone-msgs-adapter tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that converts rotor thrust commands into actuator setpoints.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
