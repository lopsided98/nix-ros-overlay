
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-loki-description";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/loki_robot-release/archive/release/kinetic/loki_description/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "c92526d38914c347e0ab3e543445d15d12c751184c44cbc972f17d7b974abcb6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The loki_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
