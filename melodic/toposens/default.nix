
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-pointcloud, catkin, toposens-driver, toposens-markers, toposens-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens";
  version = "1.0.0-r3";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens/1.0.0-3;
    sha256 = "789603a04775c168c30ff217faad03710cb031fb4db90c1d82b3aceec89a2009";
  };

  propagatedBuildInputs = [ toposens-pointcloud toposens-markers toposens-msgs toposens-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
