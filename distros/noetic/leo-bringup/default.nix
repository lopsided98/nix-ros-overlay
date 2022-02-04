
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, leo-description, leo-fw, robot-state-publisher, rosapi, rosbridge-server, rosserial-python, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-bringup";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_bringup/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "b6688572cd6e6d6f077c2600a3d9ef4ad551fdcfd9f3488132575a8e34fd7193";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs leo-description leo-fw robot-state-publisher rosapi rosbridge-server rosserial-python sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
