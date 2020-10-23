
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, leo-description, robot-state-publisher, rosbridge-server, rosserial-python, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-melodic-leo-bringup";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_bringup/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "9b02a11318444b9420521786143cb12fcd064364877c5a6a74d7b582f0e403d6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs leo-description robot-state-publisher rosbridge-server rosserial-python sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
