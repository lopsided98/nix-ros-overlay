
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, message-generation, message-runtime, nodelet, roscpp, rospy, rostest, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-server";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/peci1/tf2_server-release/archive/release/melodic/tf2_server/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "c67256a38cfb77de988fe3a67334caf05eaab0b13108cf526d109c65e94dd63a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ gtest rostest tf ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nodelet roscpp rospy tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TF2 server that can provide transforms over separate TF topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
