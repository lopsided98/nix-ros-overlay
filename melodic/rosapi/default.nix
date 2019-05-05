
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-library, message-generation, rosgraph, message-runtime, rospy, rosnode }:
buildRosPackage {
  pname = "ros-melodic-rosapi";
  version = "0.11.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosapi/0.11.0-0.tar.gz;
    sha256 = "a267e4c4c19156dc78278f5efe291fc40f84e12fde5516279738f4f68110540d";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ rosbridge-library rosgraph message-runtime rospy rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
