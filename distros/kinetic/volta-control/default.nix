
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, joint-state-controller, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-volta-control";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_control/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "36a94e2bfe4b127779876b4350c09f18a130fd1ab5c9fc776ca027e25e57736c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-controller twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
