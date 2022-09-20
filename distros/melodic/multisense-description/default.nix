
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-multisense-description";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_description/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "9bf3337c167a47ecad0285d506b754475fb156d6278081c6b068db468276b570";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
