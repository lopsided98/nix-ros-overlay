
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-leo-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/melodic/leo_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ed789fefe4acb8e77f715fbd0ac8b4eac9ffff38459b38c839926309817a9867";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
