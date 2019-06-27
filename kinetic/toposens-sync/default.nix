
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-driver, rostest, message-runtime, toposens-msgs, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-toposens-sync";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_sync/1.1.0-1;
    sha256 = "8a828239be42b2cef4c2a0eb5be61dc482c97768e7c2c9d183568b6d8a49882e";
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
