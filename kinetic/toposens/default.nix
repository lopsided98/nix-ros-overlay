
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-pointcloud, catkin, toposens-driver, toposens-sync, toposens-markers, toposens-msgs, toposens-description }:
buildRosPackage {
  pname = "ros-kinetic-toposens";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "77874260120b48106554a68d2308b6367bc305d86083f1e39e76133264036117";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ toposens-pointcloud toposens-driver toposens-sync toposens-markers toposens-msgs toposens-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
