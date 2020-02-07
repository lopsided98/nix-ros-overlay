
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, message-generation, message-runtime, nodelet, roscpp, rospy, rostest, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-server";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/peci1/tf2_server-release/archive/release/melodic/tf2_server/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "d0e1148870bc96da2119d39390871602142aa7afa20ebf73d54fb89561d27c64";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ gtest rostest tf ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nodelet roscpp rospy tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TF2 server that can provide transforms over separate TF topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
