
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-turtle-teleop-multi-key";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/EngHyu/turtle_teleop_multi_key-release/archive/release/melodic/turtle_teleop_multi_key/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "fbb81a963e9695912038087e72a8bc3323f67022afb17184213fd38d4556b1bc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using multi-key input for Turtlesim/Turtlebot3.'';
    license = with lib.licenses; [ mit ];
  };
}
