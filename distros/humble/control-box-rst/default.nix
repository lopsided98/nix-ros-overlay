
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-humble-control-box-rst";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_box_rst-release/archive/release/humble/control_box_rst/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "864eea84b860148f14e949ea9eb7399baabe403f6fd19a6f56e3b54fdf4f1870";
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
