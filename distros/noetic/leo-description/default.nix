
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6f9be0cb2166f4579d69e75d952e3d66b6200d4f01e1aec700993f8055d94cc7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
