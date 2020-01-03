
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moose-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-moose-simulator";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_simulator-release/archive/release/kinetic/moose_simulator/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "d37cab245ad176bdb13e7ac19fc3ef2db4c28af48dfde392ca15577e3a1abdbf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moose-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
