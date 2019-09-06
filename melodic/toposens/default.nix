
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-pointcloud, catkin, toposens-driver, toposens-sync, toposens-markers, toposens-msgs, toposens-description }:
buildRosPackage {
  pname = "ros-melodic-toposens";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "c22c5d63561e8e09da8c1b27dc232fc21bd07b7c58db17afb1490f5006e1b088";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ toposens-pointcloud toposens-driver toposens-sync toposens-markers toposens-msgs toposens-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
