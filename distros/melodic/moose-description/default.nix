
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-moose-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose-release/archive/release/melodic/moose_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "5485525cc3ffe5fd10d38ccde691d182fcc04308598f8b90a668d08181c65ed6";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
