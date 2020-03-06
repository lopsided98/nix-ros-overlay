
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-description, toposens-driver, toposens-markers, toposens-msgs, toposens-pointcloud, toposens-sync }:
buildRosPackage {
  pname = "ros-kinetic-toposens";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens/2.0.2-1";
    name = "archive.tar.gz";
    sha256 = "407352e3051039f5c8001a5f3757a4189d51eece8a89797f0c8a3b5ea961e45c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ toposens-description toposens-driver toposens-markers toposens-msgs toposens-pointcloud toposens-sync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
