
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pythonPackages, rospy, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-melodic-rosserial-xbee";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_xbee/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "6efbc90d56bf2d6caad0e830fe206c9c7cb3c1edfe08507caf2721589f5d7a5b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs pythonPackages.pyserial rospy rosserial-msgs rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Allows multipoint communication between rosserial
     nodes connected to an xbee. All nodes communicate back
     to a master xbee connected to a computer running ROS.

     This software currently only works with Series 1 Xbees.

     This pkg includes python code from the python-xbee project:
     http://code.google.com/p/python-xbee/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
