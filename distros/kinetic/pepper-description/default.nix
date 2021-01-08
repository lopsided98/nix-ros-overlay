
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-pepper-description";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_robot-release/archive/release/kinetic/pepper_description/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "c355d3844b9e234ce7917618b55fb25c25e5b2dff7a3aea71d909767a3dfa3b0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pepper_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
