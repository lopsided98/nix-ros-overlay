
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosmon-msgs";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon_msgs/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "03fbf2130f728808cc6eed9eb770b6e9674befdcad75a0a6677f874d3857c463";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for rosmon, the node launcher and monitor for ROS.
		rosmon is a replacement for the roslaunch tool, focused on performance,
		remote monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
