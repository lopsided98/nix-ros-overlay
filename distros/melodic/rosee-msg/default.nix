
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rosee-msg";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/rosee_msg-release/archive/release/melodic/rosee_msg/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "5a08f47967aa20234b992f8c945d4e05f1a6bc45f70ea76b923fabcb93c35818";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs std-srvs ];
  propagatedBuildInputs = [ actionlib-msgs message-generation message-runtime roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rosee_msg package'';
    license = with lib.licenses; [ asl20 ];
  };
}
