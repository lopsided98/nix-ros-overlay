
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, roslint, catkin, rostest, robot-activity-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-robot-activity";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/snt-robotics/robot_activity-release/archive/release/lunar/robot_activity/0.1.1-0.tar.gz;
    sha256 = "c9453dc73f4f4351c4d2b54d25357e4a6cef9078db3c3f62ccc9699a136538c3";
  };

  buildInputs = [ std-srvs roscpp robot-activity-msgs roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs roscpp robot-activity-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_activity package implements ROS node lifecycle'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
