
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-library, message-generation, rosgraph, message-runtime, rospy, rosnode }:
buildRosPackage {
  pname = "ros-lunar-rosapi";
  version = "0.10.1";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/lunar/rosapi/0.10.1-0.tar.gz;
    sha256 = "30d6c3323b1106176a0947be86255a7cc1d48d6b5a2c0f7827ff1437a80d54f2";
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
