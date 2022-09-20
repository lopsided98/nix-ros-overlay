
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, rostest, xacro }:
buildRosPackage {
  pname = "ros-melodic-leo-description";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/melodic/leo_description/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "360ef65d8f1517a31541eb715af5b66a7fd923dbc776f4a125fac219c70ab23d";
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
