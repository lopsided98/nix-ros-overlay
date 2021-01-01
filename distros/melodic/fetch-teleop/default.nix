
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, geometry-msgs, nav-msgs, roscpp, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-fetch-teleop";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_teleop/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "1dda678e097766b8ada664db041b3e591fb58d2441ccbfd11e91dabf3a6354a4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs geometry-msgs nav-msgs roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleoperation for fetch and freight.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
