
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-drivers, ainstein-radar-filters, ainstein-radar-gazebo-plugins, ainstein-radar-msgs, ainstein-radar-rviz-plugins, ainstein-radar-tools, catkin }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "8f47d68abd970c72ed9de890d8e1dc78cc89a6403493420ebd102fa18a577d11";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ainstein-radar-drivers ainstein-radar-filters ainstein-radar-gazebo-plugins ainstein-radar-msgs ainstein-radar-rviz-plugins ainstein-radar-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Ainstein radar sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
