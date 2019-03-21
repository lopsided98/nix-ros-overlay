
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-library, message-generation, rosgraph, message-runtime, rospy, rosnode }:
buildRosPackage {
  pname = "ros-melodic-rosapi";
  version = "0.10.2";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosapi/0.10.2-0.tar.gz;
    sha256 = "6dcfd49efe256bb3ffc4316a5c14dc704845363eaaa63f0ddd0c3f5cbd53fb7e";
  };

  propagatedBuildInputs = [ rosbridge-library rosgraph message-runtime rospy rosnode ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    #license = lib.licenses.BSD;
  };
}
