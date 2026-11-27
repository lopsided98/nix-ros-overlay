
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools, tobas-trajectory-generation }:
buildRosPackage {
  pname = "ros-jazzy-tobas-planar-multi-controller";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_planar_multi_controller/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "49eb7c5587b836ccb7f38b7c8197dcac8977c05668c5205c16c5748f6a193cf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-drone-tools tobas-node tobas-tools tobas-trajectory-generation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Flight controller, dynamics, and mixer implementations for planar multirotor aircraft.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
