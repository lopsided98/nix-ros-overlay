
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, roslint, catkin, rostest, robot-activity-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-robot-activity";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/snt-robotics/robot_activity-release/archive/release/melodic/robot_activity/0.1.1-0.tar.gz;
    sha256 = "9aea7f4b03a74445c52faddfcd58ea086b7ad8af058a6a3749e9b992849a5361";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs roscpp robot-activity-msgs ];
  nativeBuildInputs = [ std-srvs robot-activity-msgs roslint catkin roscpp ];

  meta = {
    description = ''The robot_activity package implements ROS node lifecycle'';
    #license = lib.licenses.BSD;
  };
}
