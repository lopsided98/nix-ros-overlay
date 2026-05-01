
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-lyrical-control-box-rst";
  version = "0.0.7-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_box_rst-release/archive/release/lyrical/control_box_rst/0.0.7-7.tar.gz";
    name = "0.0.7-7.tar.gz";
    sha256 = "1a5a7bb2a19e373384b672a60a8bd0229a71ba29caa3fc0000fcc9581da6999b";
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
