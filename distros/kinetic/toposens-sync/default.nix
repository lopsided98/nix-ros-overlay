
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, message-runtime, roscpp, roslaunch, rospy, rostest, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-sync";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_sync/2.0.2-1";
    name = "archive.tar.gz";
    sha256 = "58200c183893d642f6bdab94944bbeb4e5f7d2aed6aba7813fbd29a38ccf935e";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ message-runtime roscpp rospy toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Operational sync of multiple TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
