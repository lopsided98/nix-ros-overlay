
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosapi";
  version = "0.11.16-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/rosapi/0.11.16-1.tar.gz";
    name = "0.11.16-1.tar.gz";
    sha256 = "39bd7a461501e1298f877672c1f52c41dee4eb7c452533950227017fe4e294fa";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rosbridge-library rosgraph rosnode rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
