
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, joint-state-controller, twist-mux }:
buildRosPackage {
  pname = "ros-noetic-volta-control";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/noetic/volta_control/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "9a306c8e0223a09f8e40133929368358859632f9e1bc163f3c2ba9b5682dc374";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-controller twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_control package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
