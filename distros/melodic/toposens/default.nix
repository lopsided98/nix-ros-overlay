
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-description, toposens-driver, toposens-markers, toposens-msgs, toposens-pointcloud, toposens-sync }:
buildRosPackage {
  pname = "ros-melodic-toposens";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens/2.0.4-1";
    name = "archive.tar.gz";
    sha256 = "6dc77e60003b588730aff6d6fd8e38d95ae946e85dcb066ff61ba60b4f4c7be0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ toposens-description toposens-driver toposens-markers toposens-msgs toposens-pointcloud toposens-sync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
