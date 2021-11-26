
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-snowbot-operating-system";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/snowbot_release/archive/release/melodic/snowbot_operating_system/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "145a02fd03c5c381fa5977d08caec58bb309d92f078e720eba657af259bcc705";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs pluginlib rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The weather outside is frightful'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
