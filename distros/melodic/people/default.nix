
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, face-detector, leg-detector, people-msgs, people-tracking-filter, people-velocity-tracker }:
buildRosPackage {
  pname = "ros-melodic-people";
  version = "1.4.0-r4";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/people/1.4.0-4.tar.gz";
    name = "1.4.0-4.tar.gz";
    sha256 = "3257e4cec2b4985b1b8f0530bb4a37820ec2100a60f9694b36aff8c9df32c154";
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
