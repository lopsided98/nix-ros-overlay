
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phm-robot-task-completion";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/inomuh/phm_tools-release/archive/release/kinetic/phm_robot_task_completion/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "96f1b0ffb41b99f5c2ed702fdba7f7f9f79f33a765ec83be60c4c972bf24d4bc";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The phm_robot_task_completion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
