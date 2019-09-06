
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, robot-activity, roslint, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-robot-activity-tutorials";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/snt-robotics/robot_activity-release/archive/release/kinetic/robot_activity_tutorials/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "d1f809a785816dbc56c64e8c15a170cef1029cbfe0c5cdab82a327455c62058c";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs robot-activity roscpp roslint ];
  propagatedBuildInputs = [ std-srvs robot-activity roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_activity_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
