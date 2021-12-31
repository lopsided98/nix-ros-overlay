
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, leo-description, leo-fw, robot-state-publisher, rosbridge-server, rosserial-python, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-bringup";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_bringup/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "6ca51e743af6619cb577c939e3628523604032d6e1de924e27c420d46905add0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs leo-description leo-fw robot-state-publisher rosbridge-server rosserial-python sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
