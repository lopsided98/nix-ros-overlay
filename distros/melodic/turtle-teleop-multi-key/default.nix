
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-turtle-teleop-multi-key";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/EngHyu/turtle_teleop_multi_key-release/archive/release/melodic/turtle_teleop_multi_key/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "5036ff086408e0a3b9239c50ad6462e78e3e49a9f454c48a7528df103b7d3611";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using multi-key input for Turtlesim/Turtlebot3.'';
    license = with lib.licenses; [ mit ];
  };
}
