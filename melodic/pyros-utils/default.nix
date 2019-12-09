
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosnode, rosgraph, pyros-test, catkin, roslint, rosunit, catkin-pip, rospy, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-melodic-pyros-utils";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/pyros-dev/pyros-utils-release/archive/release/melodic/pyros_utils/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "a8d91138eef528f426627138f6b29c409bf7638a66c0939d9a0e4ad0c8e94900";
  };

  buildType = "catkin";
  buildInputs = [ rosgraph roslint catkin-pip rospy roslaunch rostest ];
  checkInputs = [ rosnode pyros-test rosunit ];
  propagatedBuildInputs = [ rostest rosgraph roslaunch rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Miscellaneous tools for pyROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
