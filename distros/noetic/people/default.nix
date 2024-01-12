
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, face-detector, leg-detector, people-msgs, people-tracking-filter, people-velocity-tracker }:
buildRosPackage {
  pname = "ros-noetic-people";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/people/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "d0a5fb8cdee62113702c3ee9b1174435999684165c08751c91afa57a7e107d8c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ face-detector leg-detector people-msgs people-tracking-filter people-velocity-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The people stack holds algorithms for perceiving people from a number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
