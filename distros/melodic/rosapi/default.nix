
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosapi";
  version = "0.11.14-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosapi/0.11.14-1.tar.gz";
    name = "0.11.14-1.tar.gz";
    sha256 = "b939e2ea599570df602a3994b0cd7e3555b2b307e147727433141211451a01b9";
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
