
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-rosserial-msgs";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_msgs/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "c6859213e38abe0f7420df6dda9393ca927d7b02540b74c7b993c901c0da9d2a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for automatic topic configuration using rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
