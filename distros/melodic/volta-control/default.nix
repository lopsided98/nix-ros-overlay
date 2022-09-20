
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, joint-state-controller, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-volta-control";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_control/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "cd9044f1c440c754dfd80735dfb69c93d12268a9aeb0d2fcc76928fee6bb9a70";
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
