
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, leo-description, robot-state-publisher, rosbridge-server, rosserial-python, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-melodic-leo-bringup";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_bringup/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "a7b92365a3660075d64a4ebaa41f9136ed76a20e536f0a9f4deebb46d4c729f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs leo-description robot-state-publisher rosbridge-server rosserial-python sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
