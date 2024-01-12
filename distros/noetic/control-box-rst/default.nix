
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-noetic-control-box-rst";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/control_box_rst-release/archive/release/noetic/control_box_rst/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "0f0ef55e46345ee48c71f6444d2b237719d4c041c32e4e946716c9a7bba3cdc7";
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
