
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-rolling-control-box-rst";
  version = "0.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_box_rst-release/archive/release/rolling/control_box_rst/0.0.7-4.tar.gz";
    name = "0.0.7-4.tar.gz";
    sha256 = "0c402cc409f715b5a60c383d795de643f7613ebb5e115f0a5d71555eb213c171";
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
