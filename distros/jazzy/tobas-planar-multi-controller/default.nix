
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools, tobas-trajectory-generation }:
buildRosPackage {
  pname = "ros-jazzy-tobas-planar-multi-controller";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_planar_multi_controller/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "583884b271f1b34ec5691a927e423864098b30f265c4d69532d58dec7f11b057";
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
