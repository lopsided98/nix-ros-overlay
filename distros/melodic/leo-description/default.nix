
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, rostest, xacro }:
buildRosPackage {
  pname = "ros-melodic-leo-description";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/melodic/leo_description/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "8e6ce8a4b951bbfc99a9422b646c267eb685730c239bb7be953d71d9d91bbb32";
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
