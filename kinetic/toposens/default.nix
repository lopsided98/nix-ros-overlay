
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-description, toposens-driver, toposens-markers, toposens-msgs, toposens-pointcloud, toposens-sync }:
buildRosPackage {
  pname = "ros-kinetic-toposens";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens/2.0.0-1";
    name = "archive.tar.gz";
    sha256 = "59d950c08bb50f93856a6a47b7a55293b5ea279990f8db39210dd16c793c068e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ toposens-description toposens-driver toposens-markers toposens-msgs toposens-pointcloud toposens-sync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
