
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosmon-msgs";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon_msgs/2.0.2-0.tar.gz;
    sha256 = "6fb5e71fbb5ab94c72316c1d653a760b4dc068026bdbb954991eed26229ef74f";
  };

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
