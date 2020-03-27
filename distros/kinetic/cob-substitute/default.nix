
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-docker-control, cob-reflector-referencing, cob-safety-controller }:
buildRosPackage {
  pname = "ros-kinetic-cob-substitute";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_substitute/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "1571cde070264b32f3df68e36174d1164d11999545df995072e5dc652cd59a8b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-docker-control cob-reflector-referencing cob-safety-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_substitute'';
    license = with lib.licenses; [ asl20 ];
  };
}
