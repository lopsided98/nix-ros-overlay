
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosmon-msgs";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/kinetic/rosmon_msgs/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "50247fbf2a2658613a2805a0acf89198a7b5aebff583fa8ba75a7bafc61eb89e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for rosmon, the node launcher and monitor for ROS.
		rosmon is a replacement for the roslaunch tool, focused on performance,
		remote monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
