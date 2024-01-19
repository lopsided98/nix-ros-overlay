
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosapi";
  version = "0.11.17-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/rosapi/0.11.17-1.tar.gz";
    name = "0.11.17-1.tar.gz";
    sha256 = "7f94f672ef42b8a8d33be48c5890f43f8b9cf1de4495e018242d0eb0231d9ec8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ message-runtime rosbridge-library rosgraph rosnode rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
