
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-melodic-control-box-rst";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/control_box_rst-release/archive/release/melodic/control_box_rst/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "f569fa478084a152a6d3372b4c3f0068455f65f2922acacd28df6ef1dd20bd74";
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
