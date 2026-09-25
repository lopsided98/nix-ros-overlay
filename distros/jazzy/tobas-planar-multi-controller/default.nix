
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools, tobas-trajectory-generation }:
buildRosPackage {
  pname = "ros-jazzy-tobas-planar-multi-controller";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_planar_multi_controller/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "343d08399d7628e82109c025ce6b92a30ce9632e271be67f04e61248a1f89ec5";
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
