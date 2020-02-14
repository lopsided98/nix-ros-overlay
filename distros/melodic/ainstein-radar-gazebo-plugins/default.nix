
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, gazebo-plugins, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-gazebo-plugins";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_gazebo_plugins/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "795dc969d70f86385cdc9260cf5e54055fb6e686c54609c3d7f62fdf3471f776";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs gazebo-plugins gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar sensor plugins for the Gazebo simulator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
