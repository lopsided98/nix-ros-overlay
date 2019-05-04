
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-library, message-generation, rosgraph, message-runtime, rospy, rosnode }:
buildRosPackage {
  pname = "ros-kinetic-rosapi";
  version = "0.11.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosapi/0.11.0-0.tar.gz;
    sha256 = "bf9ef7fadb3d406f280ad16e63d1c07222e5de6a3caaeb0e870d1ddca4980a74";
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
