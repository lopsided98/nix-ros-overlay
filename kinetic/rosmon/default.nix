
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmon-core, rqt-rosmon }:
buildRosPackage {
  pname = "ros-kinetic-rosmon";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/kinetic/rosmon/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ae51f9e2f84a9eb57fd295877efbfd402facbe0af9abab95723ebfcd49804265";
  };

  buildType = "catkin";
  buildInputs = [ rosmon-core rqt-rosmon ];
  propagatedBuildInputs = [ rosmon-core rqt-rosmon ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
