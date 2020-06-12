
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pyquaternion }:
buildRosPackage {
  pname = "ros-kinetic-dual-quaternions";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions-release/archive/release/kinetic/dual_quaternions/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "75c484d00dffea7bd617ff271800da2955d80e364a49937d9973c4386e87ecfa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pyquaternion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dual quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
