
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-pose-pid, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-nonplanar-multi-controller";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_nonplanar_multi_controller/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "a627e5cd62e6434ad3fbe62d5cc2d7db3653f0d240ca2ca86974be72458876ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-drone-tools tobas-node tobas-pose-pid tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Flight controller and constrained mixer for nonplanar multirotor aircraft.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
