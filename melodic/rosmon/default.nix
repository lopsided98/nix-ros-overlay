
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-rosmon, rosmon-core, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosmon";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "7294462ecc50fb638016cefea6f43c40fe45799bbb9088e8b3c7d71aaf7905ec";
  };

  buildType = "catkin";
  buildInputs = [ rqt-rosmon rosmon-core ];
  propagatedBuildInputs = [ rqt-rosmon rosmon-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
