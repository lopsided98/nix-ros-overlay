
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, people-msgs, catkin, leg-detector, people-velocity-tracker, people-tracking-filter, face-detector }:
buildRosPackage {
  pname = "ros-kinetic-people";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/kinetic/people/1.1.2-0.tar.gz;
    sha256 = "c86374c4df8a8894d28000ce42d84d3468aca870b2cf33039b61a7c24a9c9c64";
  };

  propagatedBuildInputs = [ people-msgs leg-detector people-velocity-tracker people-tracking-filter face-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The people stack holds algorithms for perceiving people from a number of sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
