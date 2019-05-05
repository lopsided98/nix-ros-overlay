
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, people-msgs, catkin, leg-detector, people-velocity-tracker, people-tracking-filter, face-detector }:
buildRosPackage {
  pname = "ros-melodic-people";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/people/1.1.2-0.tar.gz;
    sha256 = "c9e1e3a253e0a4674504cf974f66e24d91ae6552eca545cd8fde925c94dd7bdc";
  };

  propagatedBuildInputs = [ people-msgs leg-detector people-velocity-tracker people-tracking-filter face-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The people stack holds algorithms for perceiving people from a number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
