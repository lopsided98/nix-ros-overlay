
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, people-msgs, catkin, face-detector, people-tracking-filter, leg-detector, people-velocity-tracker }:
buildRosPackage {
  pname = "ros-melodic-people";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/people/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "6261e11750ff43c0eecd09034928197e6266c0410bc1d8310dfa0dc899798a00";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ people-msgs face-detector people-tracking-filter leg-detector people-velocity-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The people stack holds algorithms for perceiving people from a number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
