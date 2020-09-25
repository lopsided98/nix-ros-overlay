
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-leo-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_description-release/archive/release/melodic/leo_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e5eb760ce73e9c75e4f6f618a84755cff6a1c1fcb3edbf6fc16bd450775f1cce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
