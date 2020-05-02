
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosbridge-library, rosgraph, rosnode, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosapi";
  version = "0.11.6-r2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosapi/0.11.6-2.tar.gz";
    name = "0.11.6-2.tar.gz";
    sha256 = "f00486d358e8b78257632b59492b67ede0b9fda80c8e9a4ea093ebb8674eb190";
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
