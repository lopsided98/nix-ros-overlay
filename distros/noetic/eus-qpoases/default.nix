
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp, rostest, subversion }:
buildRosPackage {
  pname = "ros-noetic-eus-qpoases";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_qpoases/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "bd44cf3c675c6e7a99ba32de3ffe7c9f41750ec43b7ff6b2ee24550b9521f627";
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
