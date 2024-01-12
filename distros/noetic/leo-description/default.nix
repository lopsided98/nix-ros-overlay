
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, rostest, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-description";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_description/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "856e8a682d8b090f939bc8b18534ad2e564e30d01ea3bc2d8a7563c0b0c7768c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
