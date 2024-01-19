
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-iron-control-box-rst";
  version = "0.0.7-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_box_rst-release/archive/release/iron/control_box_rst/0.0.7-5.tar.gz";
    name = "0.0.7-5.tar.gz";
    sha256 = "1c6a0ac55cf1841622ed8e693e6adc4c49d9910f8f81bcad998272c807dea53c";
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
