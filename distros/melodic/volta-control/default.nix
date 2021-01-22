
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, joint-state-controller, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-volta-control";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_control/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5ea051d806d5f011ebbc0631809af281e628caf6f937fe2bc401bd22a054b8df";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-controller twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
