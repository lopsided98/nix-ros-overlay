
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, message-generation, message-runtime, nodelet, roscpp, rospy, rostest, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-server";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/peci1/tf2_server-release/archive/release/melodic/tf2_server/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "c3d98a499738325ecbf1dbfbaa21efdcdb20b8387387df3de7af09657088e402";
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
