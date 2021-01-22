
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-power-msgs";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/power_msgs-release/archive/release/noetic/power_msgs/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "0ffc282953f4d9de6d8e6f86ab896d457b9b6d3a38448af09c35d63dd2507c71";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for power measurement and breaker control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
