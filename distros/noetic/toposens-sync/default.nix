
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, message-runtime, roscpp, roslaunch, rostest, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-sync";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/noetic/toposens_sync/2.1.0-1";
    name = "archive.tar.gz";
    sha256 = "c7fba8d2196e90029ac42cda4287f6dedc29b2cb562b3c1c18734ffc4a46e0e1";
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
