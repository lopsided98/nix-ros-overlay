
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, rostest, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-description";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_description/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "6e558c9961fca12f69ef519a8d39766616b0a81533ad9f15e58d3a3d418f0df8";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
