
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, robot-activity, roslint, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-robot-activity-tutorials";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/snt-robotics/robot_activity-release/archive/release/melodic/robot_activity_tutorials/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "8d4cb4eb59c9bbcb053aef3cd75652525a4f7276d424cc3600a4d0e443807fd2";
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
