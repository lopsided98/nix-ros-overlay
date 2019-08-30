
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-reflector-referencing, cob-safety-controller, catkin, cob-docker-control }:
buildRosPackage {
  pname = "ros-melodic-cob-substitute";
  version = "0.6.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_substitute-release/archive/release/melodic/cob_substitute/0.6.8-1.tar.gz;
    sha256 = "39faebf1b1bfabbbe07bbf0054a4417bde87fbd0f8331df06e2a16783a6d50c5";
  };

  propagatedBuildInputs = [ cob-reflector-referencing cob-safety-controller cob-docker-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_substitute'';
    license = with lib.licenses; [ asl20 ];
  };
}
