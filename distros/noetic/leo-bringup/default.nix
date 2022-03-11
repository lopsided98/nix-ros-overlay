
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, leo-description, leo-fw, robot-state-publisher, rosapi, rosbridge-server, rosserial-python, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-bringup";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_bringup/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "e01e5e55d3a99680f1776d0825d6966542701ff67c9d4c590564f9d73bf4e729";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs leo-description leo-fw robot-state-publisher rosapi rosbridge-server rosserial-python sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
