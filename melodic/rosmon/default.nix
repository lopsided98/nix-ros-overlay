
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmon-core, rqt-rosmon }:
buildRosPackage {
  pname = "ros-melodic-rosmon";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "14f2e069b2dd464ccf20634b9fb917429a562c0c3b4dbda904999cb38f6f54ac";
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
