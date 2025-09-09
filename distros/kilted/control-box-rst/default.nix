
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-kilted-control-box-rst";
  version = "0.0.7-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_box_rst-release/archive/release/kilted/control_box_rst/0.0.7-6.tar.gz";
    name = "0.0.7-6.tar.gz";
    sha256 = "d4505ebc35dfd4651d86ef066256e2a5fd94924795776cf2fb2e126c84bee202";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ipopt ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The control_box_rst package provides C++ libraries for predictive control, 
               direct optimal control, optimization and simulation.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
