
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-rolling-control-box-rst";
  version = "0.0.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_box_rst-release/archive/release/rolling/control_box_rst/0.0.7-3.tar.gz";
    name = "0.0.7-3.tar.gz";
    sha256 = "c9dcde87cbbf480ffa3ee8b7b2c180175f0b1d3eb4a21b1b067d707649c29dae";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ipopt ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The control_box_rst package provides C++ libraries for predictive control, 
               direct optimal control, optimization and simulation.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
