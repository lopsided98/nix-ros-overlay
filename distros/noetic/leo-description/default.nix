
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, rostest, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-description";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_description/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "0663ddfecbba76660c215c788834866fc816036cf79734261693a906004fbb17";
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
