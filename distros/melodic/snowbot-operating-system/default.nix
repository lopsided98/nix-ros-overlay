
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, qt5, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-snowbot-operating-system";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/snowbot_release/archive/release/melodic/snowbot_operating_system/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "8a31650a6043bba368d396b6d70c776e373b47e6897e9294efad3621f9788baa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs pluginlib qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The weather outside is frightful'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
