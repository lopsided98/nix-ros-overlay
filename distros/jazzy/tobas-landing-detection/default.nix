
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-landing-detection";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_landing_detection/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "776ed5d66e31c8ec48026368b0ef4b0fdb3070ecb21365b428bf879c43d6986f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dsp tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that detects vehicle landing and landed-state transitions.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
