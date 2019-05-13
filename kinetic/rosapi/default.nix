
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-library, message-generation, rosgraph, message-runtime, rospy, rosnode }:
buildRosPackage {
  pname = "ros-kinetic-rosapi";
  version = "0.11.1-r1";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosapi/0.11.1-1.tar.gz;
    sha256 = "f91a0861caa9539e6e016b19a9b1da8c949c1b7eef219887c6a5bae803533980";
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
