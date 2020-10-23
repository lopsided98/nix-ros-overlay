
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, message-runtime, roscpp, roslaunch, rospy, rostest, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-sync";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_sync/2.0.4-1";
    name = "archive.tar.gz";
    sha256 = "c22660383dfbb7f66853c2d4ed497f635bbd454dfaf63050399c726290719122";
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
