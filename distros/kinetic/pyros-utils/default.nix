
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, pyros-test, rosgraph, roslaunch, roslint, rosnode, rospy, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pyros-utils";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/asmodehn/pyros-utils-release/archive/release/kinetic/pyros_utils/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "7f552d986b5ab6a141b9a0a43feb8cc77482f90ad71cc7a107f441a8dc901271";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip roslint ];
  checkInputs = [ pyros-test rosnode rosunit ];
  propagatedBuildInputs = [ rosgraph roslaunch rospy rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Miscellaneous tools for pyROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
