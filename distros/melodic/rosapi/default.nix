
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosapi";
  version = "0.11.16-r2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosapi/0.11.16-2.tar.gz";
    name = "0.11.16-2.tar.gz";
    sha256 = "95a3e49276d45b279f078361a7cc083c08dd24162c9b87bee632efc3f9989129";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pythonPackages.setuptools ];
  propagatedBuildInputs = [ message-runtime rosbridge-library rosgraph rosnode rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
