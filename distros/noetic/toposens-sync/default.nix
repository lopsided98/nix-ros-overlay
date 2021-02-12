
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, message-runtime, roscpp, roslaunch, rostest, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-sync";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/noetic/toposens_sync/2.2.0-1";
    name = "archive.tar.gz";
    sha256 = "a7e116b3876a81fa4eaac8f53ce15207335ebe315f7fec07bb9a65295982b46b";
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
