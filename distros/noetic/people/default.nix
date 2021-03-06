
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, face-detector, leg-detector, people-msgs, people-tracking-filter, people-velocity-tracker }:
buildRosPackage {
  pname = "ros-noetic-people";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/people/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "38081a790261ca2b7dc8a6ab0fed886eb53c401af72e5c805aa2c8388d96391c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ face-detector leg-detector people-msgs people-tracking-filter people-velocity-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The people stack holds algorithms for perceiving people from a number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
