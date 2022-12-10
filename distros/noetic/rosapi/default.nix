
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosapi";
  version = "0.11.16-r2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/rosapi/0.11.16-2.tar.gz";
    name = "0.11.16-2.tar.gz";
    sha256 = "bf9ce72d57cbb66cb7eb52ed5fe4cdb54e39c1d46418880efbbc2afd75d9c054";
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
