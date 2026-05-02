
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-rolling-control-box-rst";
  version = "0.0.7-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_box_rst-release/archive/release/rolling/control_box_rst/0.0.7-6.tar.gz";
    name = "0.0.7-6.tar.gz";
    sha256 = "fd86d309a5d900fb007894dc48082974d24c948d29abc16be8d8a45aa35a9cb4";
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
