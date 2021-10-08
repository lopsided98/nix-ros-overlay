
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, leo-description, robot-state-publisher, rosbridge-server, rosserial-python, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-bringup";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_bringup/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "439d51236941302eb886b10982e8155d712caffe832b0fe1efda5eac21fcbb56";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs leo-description robot-state-publisher rosbridge-server rosserial-python sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for starting basic Leo Rover functionalities.'';
    license = with lib.licenses; [ mit ];
  };
}
