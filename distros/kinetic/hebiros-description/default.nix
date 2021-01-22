
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-kinetic-hebiros-description";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebiros-release/archive/release/kinetic/hebiros_description/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "e68ce4376b95b40da84bcc1618d8f09635c2988ace6aedf6d50724b5db06086d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Models for Hebi components and hebiros'';
    license = with lib.licenses; [ "TODO" ];
  };
}
