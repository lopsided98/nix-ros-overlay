
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-pointcloud, catkin, toposens-driver, toposens-sync, toposens-markers, toposens-msgs, toposens-description }:
buildRosPackage {
  pname = "ros-melodic-toposens";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens/1.2.2-1;
    sha256 = "bf737620855f64183fc755cd4483260bbb230f9092da0d909a07bfd60de0f851";
  };

  propagatedBuildInputs = [ toposens-pointcloud toposens-driver toposens-sync toposens-markers toposens-msgs toposens-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
