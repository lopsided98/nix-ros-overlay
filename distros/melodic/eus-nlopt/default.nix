
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, euslisp, nlopt }:
buildRosPackage {
  pname = "ros-melodic-eus-nlopt";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/eus_nlopt/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "2879249973022d828e30dc71b3481387661578ba4927068829d56d9ea4628e79";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ euslisp nlopt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_nlopt'';
    license = with lib.licenses; [ asl20 ];
  };
}
