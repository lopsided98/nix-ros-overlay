
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, gazebo-plugins, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-gazebo-plugins";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_gazebo_plugins/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "dd2a4a646e14ce84ea9b08f7d52e3807b514079b555e8ad2704eb83d9926bb13";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs gazebo-plugins gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar sensor plugins for the Gazebo simulator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
