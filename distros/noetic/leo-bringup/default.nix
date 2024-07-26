
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, leo-description, leo-fw, robot-state-publisher, rosapi, rosbridge-server, rosserial-python, sensor-msgs, web-video-server, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-bringup";
  version = "2.4.1-r2";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_bringup/2.4.1-2.tar.gz";
    name = "2.4.1-2.tar.gz";
    sha256 = "1ad3fb6983181de5f0c94d2d230b5cd488b091b3df7c91214cea5dab63407501";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs leo-description leo-fw robot-state-publisher rosapi rosbridge-server rosserial-python sensor-msgs web-video-server xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Scripts and launch files for starting basic Leo Rover functionalities.";
    license = with lib.licenses; [ mit ];
  };
}
