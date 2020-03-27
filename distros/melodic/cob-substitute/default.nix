
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-docker-control, cob-reflector-referencing, cob-safety-controller }:
buildRosPackage {
  pname = "ros-melodic-cob-substitute";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/melodic/cob_substitute/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "fdefa29b8dff0b7d7c6649d2501d359f4fa28bb85557685137d918f59631dbab";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-docker-control cob-reflector-referencing cob-safety-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_substitute'';
    license = with lib.licenses; [ asl20 ];
  };
}
