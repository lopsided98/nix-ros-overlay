
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-docker-control, cob-reflector-referencing, cob-safety-controller }:
buildRosPackage {
  pname = "ros-noetic-cob-substitute";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_substitute/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "9f6abb857678e7be1f7ca7870eafdb8e6c1311246d12e6a88bdb0f0c216c7e32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-docker-control cob-reflector-referencing cob-safety-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_substitute'';
    license = with lib.licenses; [ asl20 ];
  };
}
