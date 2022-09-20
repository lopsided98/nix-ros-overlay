
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp, rostest, subversion }:
buildRosPackage {
  pname = "ros-melodic-eus-qpoases";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/eus_qpoases/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "51a1c51a857a383e53f08daa8146c79792c0c548342b9c0bad3ca6ef0fc7c42f";
  };

  buildType = "catkin";
  buildInputs = [ catkin subversion ];
  propagatedBuildInputs = [ euslisp rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_qpoases'';
    license = with lib.licenses; [ asl20 ];
  };
}
