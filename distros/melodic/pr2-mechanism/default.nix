
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-interface, pr2-controller-manager, pr2-hardware-interface, pr2-mechanism-diagnostics, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism";
  version = "1.8.20-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_mechanism/1.8.20-1.tar.gz";
    name = "1.8.20-1.tar.gz";
    sha256 = "d9fc465f3077fe29eec22da9d34f1573c8639c010bf1707686b6fde3e233d7a0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-controller-interface pr2-controller-manager pr2-hardware-interface pr2-mechanism-diagnostics pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mechanism stack contains the infrastructure to control the PR2 robot in a hard realtime control loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
