
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin-pip, catkin, rostest, rosgraph, rospy, pyros-test, roslaunch, rosunit, rosnode }:
buildRosPackage {
  pname = "ros-kinetic-pyros-utils";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/asmodehn/pyros-utils-release/archive/release/kinetic/pyros_utils/0.1.4-0.tar.gz;
    sha256 = "7f552d986b5ab6a141b9a0a43feb8cc77482f90ad71cc7a107f441a8dc901271";
  };

  buildInputs = [ roslaunch rostest rosgraph roslint rospy catkin-pip ];
  checkInputs = [ pyros-test rosunit rosnode ];
  propagatedBuildInputs = [ rostest roslaunch rosgraph rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Miscellaneous tools for pyROS'';
    #license = lib.licenses.BSD;
  };
}
