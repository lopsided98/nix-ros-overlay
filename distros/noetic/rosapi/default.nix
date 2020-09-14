
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosapi";
  version = "0.11.10-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/rosapi/0.11.10-1.tar.gz";
    name = "0.11.10-1.tar.gz";
    sha256 = "c016510c0bfaa8bda7b789ec56a45f4dae7d813de1446c52f2815ca6a598ba01";
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
