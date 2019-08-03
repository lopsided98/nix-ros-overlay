
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-pointcloud, catkin, toposens-driver, toposens-sync, toposens-markers, toposens-msgs, toposens-description }:
buildRosPackage {
  pname = "ros-kinetic-toposens";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens/1.2.2-1;
    sha256 = "50c4164c27c143bd197f84b29ecc400684c7e7b909386af2b547a02e8b0ea176";
  };

  propagatedBuildInputs = [ toposens-pointcloud toposens-driver toposens-sync toposens-markers toposens-msgs toposens-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
