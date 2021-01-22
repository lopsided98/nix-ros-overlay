
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, people-msgs, people-velocity-tracker }:
buildRosPackage {
  pname = "ros-noetic-people";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/people/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "95a6dbcd69d0e0556b34ff693ed87b1a596118ddf9d147e43c071617391696ed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ people-msgs people-velocity-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The people stack holds algorithms for perceiving people from a number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
