
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, message-generation, message-runtime, roscpp, rospy, rostest, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-server";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/peci1/tf2_server-release/archive/release/melodic/tf2_server/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "c3d426d0010cb58736fe7bb5cca14fea50eea2dcb2e6e60d92218bb5f222689f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ gtest rostest tf ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp rospy tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TF2 server that can provide transforms over separate TF topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
