
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, message-runtime, roscpp, roslaunch, rostest, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-sync";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_sync/2.2.0-3";
    name = "archive.tar.gz";
    sha256 = "7934d3df0f7a6f32b6998fc8ff2764fe9bd35e3e7be52f2b2e5beb60fa319202";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ message-runtime roscpp toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Operational sync of multiple TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
