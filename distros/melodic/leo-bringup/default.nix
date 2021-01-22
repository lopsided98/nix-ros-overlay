
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, leo-description, robot-state-publisher, rosbridge-server, rosserial-python, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-melodic-leo-bringup";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_bringup/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "25bfc72cfae951ef08d764c3cf0ebd524de5dfdbd026ed1ceea543d24acb9039";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs leo-description robot-state-publisher rosbridge-server rosserial-python sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
