
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosapi";
  version = "0.11.15-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosapi/0.11.15-1.tar.gz";
    name = "0.11.15-1.tar.gz";
    sha256 = "dd92075cfac098ea89bf98afd4f9d2bd3321e40db8b34997301dc3dbc2329ec9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rosbridge-library rosgraph rosnode rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
