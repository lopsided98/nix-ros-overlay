
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-driver, rostest, message-runtime, toposens-msgs, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-toposens-sync";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_sync/1.1.0-1;
    sha256 = "9921d38cac71f021f3a4b560a3aef86d8e625f68ed205c355df4ff61b0656308";
  };

  buildInputs = [ toposens-driver message-runtime toposens-msgs rospy roscpp ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ toposens-driver message-runtime toposens-msgs rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Operational sync of multiple TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
