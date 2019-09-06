
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-driver, rostest, message-runtime, toposens-msgs, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-toposens-sync";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_sync/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "544d18c25b2b1925a6a0858ec16c2531f875f56dd66fda7c3dc7ad8a6ce05a13";
  };

  buildType = "catkin";
  buildInputs = [ toposens-driver message-runtime toposens-msgs rospy roscpp ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ toposens-driver message-runtime toposens-msgs rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Operational sync of multiple TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
