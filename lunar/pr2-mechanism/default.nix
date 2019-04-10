
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-hardware-interface, pr2-controller-interface, pr2-mechanism-diagnostics, catkin, pr2-controller-manager, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-lunar-pr2-mechanism";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/pr2_mechanism/1.8.18-0.tar.gz;
    sha256 = "7a1787e1bd66e5bb879ddb3045359baef15e28863f7954f2fd0d691c71d3e16f";
  };

  propagatedBuildInputs = [ pr2-controller-manager pr2-hardware-interface pr2-controller-interface pr2-mechanism-diagnostics pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mechanism stack contains the infrastructure to control the PR2 robot in a hard realtime control loop.'';
    #license = lib.licenses.BSD;
  };
}
