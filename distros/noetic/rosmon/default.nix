
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmon-core, rqt-rosmon }:
buildRosPackage {
  pname = "ros-noetic-rosmon";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/noetic/rosmon/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "22055a518407348cc4061d41a8fd9eaf35b15c279706187f4e6b7a3ebaabdc9c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosmon-core rqt-rosmon ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
