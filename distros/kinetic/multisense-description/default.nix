
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-multisense-description";
  version = "4.0.0";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_description/4.0.0-0.tar.gz";
    name = "4.0.0-0.tar.gz";
    sha256 = "fab6e144848562329bfedeabaf11947027389fa0d1045f4c2da778772a8b8ebb";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
