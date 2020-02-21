
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosapi";
  version = "0.11.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosapi/0.11.4-1.tar.gz";
    name = "0.11.4-1.tar.gz";
    sha256 = "3d2ec2a3490c28a56dd778a84ad7ee83ac89bfd5230e3da3b147883e46df2af5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rosbridge-library rosgraph rosnode rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
