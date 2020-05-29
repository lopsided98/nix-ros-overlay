
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosapi";
  version = "0.11.9-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosapi/0.11.9-1.tar.gz";
    name = "0.11.9-1.tar.gz";
    sha256 = "8dc78fe28105199785fafbb22b19d61fbbcd52e2c11fcae8d21dfc425456e5b5";
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
