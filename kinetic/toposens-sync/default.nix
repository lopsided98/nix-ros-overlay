
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, message-runtime, roscpp, roslaunch, rospy, rostest, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-sync";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_sync/2.0.0-1";
    name = "archive.tar.gz";
    sha256 = "58b17fa7ab219312c0600a3b35279cd4abc7bc8fd712a0b4f75b7b2a6cb621d1";
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
