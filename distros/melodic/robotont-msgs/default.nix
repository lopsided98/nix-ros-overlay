
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-robotont-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_msgs-release/archive/release/melodic/robotont_msgs/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "d85d437992d72b72614b66241a1be1aafa7066e561a6539fbdf7b404838d00b5";
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
