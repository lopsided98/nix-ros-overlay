
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin-pip, catkin, rostest, rosgraph, rospy, pyros-test, roslaunch, rosunit, rosnode }:
buildRosPackage {
  pname = "ros-lunar-pyros-utils";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/pyros-dev/pyros-utils-release/archive/release/lunar/pyros_utils/0.1.4-0.tar.gz;
    sha256 = "ca63a6f1acdddc3b64b1741839302b91f6ff30ba57d4bea50abd941e432a00fc";
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
