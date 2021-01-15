
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-leo-description";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/kinetic/leo_description/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "de249806434435aff4d1621e1b59d95f09985fef33612871470b1c2d32d8e532";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
