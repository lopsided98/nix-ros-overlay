
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-activity-msgs, roscpp, roslint, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-robot-activity";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/snt-robotics/robot_activity-release/archive/release/melodic/robot_activity/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "9aea7f4b03a74445c52faddfcd58ea086b7ad8af058a6a3749e9b992849a5361";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ robot-activity-msgs roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_activity package implements ROS node lifecycle'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
