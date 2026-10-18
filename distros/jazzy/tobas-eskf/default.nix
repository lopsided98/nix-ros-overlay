
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-eigen-tools, tobas-geographic, tobas-kdl-conversions, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eskf";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eskf/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "2d135c2fd6b8f7fe1f3f838ba9158cfc8fb7d539998572df9388beaeb5ad4ef3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-eigen-tools tobas-geographic tobas-kdl-conversions tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Error-state Kalman filter library and ROS 2 node for vehicle state estimation.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
