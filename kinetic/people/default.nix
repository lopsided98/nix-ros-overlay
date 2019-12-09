
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, people-msgs, catkin, face-detector, people-tracking-filter, leg-detector, people-velocity-tracker }:
buildRosPackage {
  pname = "ros-kinetic-people";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/people/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "20e548c7174f57519c1b387f9fb970cd483da33777ae4e34e959bfb54500992b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ people-msgs face-detector people-tracking-filter leg-detector people-velocity-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The people stack holds algorithms for perceiving people from a number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
