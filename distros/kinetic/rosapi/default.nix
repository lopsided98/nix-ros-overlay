
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosapi";
  version = "0.11.9-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosapi/0.11.9-1.tar.gz";
    name = "0.11.9-1.tar.gz";
    sha256 = "add06787e0db10a07115f1c0508c9dd2b5c33640fde29c445da98bb001ec3af0";
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
