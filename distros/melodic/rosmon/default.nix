
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmon-core, rqt-rosmon }:
buildRosPackage {
  pname = "ros-melodic-rosmon";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "a27ecc9867d2130a7fedc83d531bc182cae7ad0e88b6fe34a2a2fc5bb05fa39d";
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
