
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-driver, toposens-markers, toposens-msgs, catkin, toposens-pointcloud, toposens-description, toposens-sync }:
buildRosPackage {
  pname = "ros-melodic-toposens";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "d2ffaef31e99fda72b09adc3e41c518e6dc44ed265ba46f8c76cc454da96db8e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ toposens-driver toposens-markers toposens-msgs toposens-pointcloud toposens-description toposens-sync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
