
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-moose-description";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose-release/archive/release/melodic/moose_description/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "d80ac9eb4647a97b167fb7dacb49a567b4ed3162f3057d1822df3b6d18393a5e";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
