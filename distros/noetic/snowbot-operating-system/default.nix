
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, qt5, roslint, rviz }:
buildRosPackage {
  pname = "ros-noetic-snowbot-operating-system";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/snowbot_release/archive/release/noetic/snowbot_operating_system/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "e8927e8d01db9f934bb23f1ccb99d19b0ff796bab8855ff23b8c643c0bf58e29";
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
