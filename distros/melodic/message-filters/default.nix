
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosconsole, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-message-filters";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/message_filters/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "5a24340fa66ecbd6a7d2ad52274499592f6dee34605ea173f2f0017688a3e9ad";
  };

  buildType = "catkin";
  buildInputs = [ boost rostest rosunit ];
  propagatedBuildInputs = [ rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
