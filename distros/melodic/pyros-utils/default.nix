
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, pyros-test, rosgraph, roslaunch, roslint, rosnode, rospy, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pyros-utils";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/pyros-dev/pyros-utils-release/archive/release/melodic/pyros_utils/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "a8d91138eef528f426627138f6b29c409bf7638a66c0939d9a0e4ad0c8e94900";
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
