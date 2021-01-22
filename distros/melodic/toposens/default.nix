
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-bringup, toposens-description, toposens-driver, toposens-markers, toposens-msgs, toposens-pointcloud, toposens-sync }:
buildRosPackage {
  pname = "ros-melodic-toposens";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens/2.1.0-1";
    name = "archive.tar.gz";
    sha256 = "703e1844de02b4ebaa27df9a4f71822c1848d00cf9e3ae62e7f970a81867c50a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ toposens-bringup toposens-description toposens-driver toposens-markers toposens-msgs toposens-pointcloud toposens-sync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
