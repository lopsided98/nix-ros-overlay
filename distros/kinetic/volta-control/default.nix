
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, joint-state-controller, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-volta-control";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_control/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "da7014b73a556268f2a3a5899c680d0854e25a73093879646e87811d6f6217f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-controller twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
