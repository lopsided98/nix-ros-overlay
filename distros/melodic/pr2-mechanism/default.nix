
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-interface, pr2-controller-manager, pr2-hardware-interface, pr2-mechanism-diagnostics, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism";
  version = "1.8.21-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_mechanism/1.8.21-1.tar.gz";
    name = "1.8.21-1.tar.gz";
    sha256 = "7b282ac39621bcdf976a9913c0d3308add9e15b15c72be8400308d4fe9951cdb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-controller-interface pr2-controller-manager pr2-hardware-interface pr2-mechanism-diagnostics pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mechanism stack contains the infrastructure to control the PR2 robot in a hard realtime control loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
