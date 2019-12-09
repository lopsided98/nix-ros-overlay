
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-driver, code-coverage, toposens-msgs, catkin, rospy, roscpp, message-runtime, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-toposens-sync";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_sync/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "5f38e63cec88fa3d3c90920eb47b0a2cd137c35258422b5a5cb80cb6f7135d31";
  };

  buildType = "catkin";
  buildInputs = [ toposens-driver toposens-msgs rospy roscpp message-runtime ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ toposens-driver toposens-msgs rospy roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Operational sync of multiple TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
