
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ipopt }:
buildRosPackage {
  pname = "ros-rolling-control-box-rst";
  version = "0.0.7-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_box_rst-release/archive/release/rolling/control_box_rst/0.0.7-5.tar.gz";
    name = "0.0.7-5.tar.gz";
    sha256 = "ade8303dab7c4e7d46ca1359a90167ba4e9a9ec6a02d20cd0f3f0682d25fa8bf";
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
