
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-power-msgs";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/power_msgs-release/archive/release/noetic/power_msgs/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "696eff7295d1352040e3223f176fa488815f14ef05066ee6ab43e479791d4120";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for power measurement and breaker control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
