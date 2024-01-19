
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rosee-msg";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/rosee_msg-release/archive/release/noetic/rosee_msg/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "e0eda55eb27e429b6473555f2c3b714a58533e6885dbe982da26bfa342ad6818";
  };

  buildType = "catkin";
  buildInputs = [ catkin geometry-msgs std-msgs std-srvs ];
  propagatedBuildInputs = [ actionlib-msgs message-generation message-runtime roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rosee_msg package'';
    license = with lib.licenses; [ asl20 ];
  };
}
