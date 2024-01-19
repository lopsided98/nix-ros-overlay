
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-robotont-msgs";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_msgs-release/archive/release/noetic/robotont_msgs/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "447b3cf76724d1ffd31b87185b5acad48914a846fbe92028240589d263dcaa40";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
