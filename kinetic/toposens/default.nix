
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-pointcloud, catkin, toposens-driver, toposens-sync, toposens-markers, toposens-msgs, toposens-description }:
buildRosPackage {
  pname = "ros-kinetic-toposens";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens/1.1.0-1;
    sha256 = "2f6e8ae7feba51b72f27cee6b5bcc7a40acb6e6eb9fcfca5f2c6861709377023";
  };

  propagatedBuildInputs = [ toposens-pointcloud toposens-driver toposens-sync toposens-markers toposens-msgs toposens-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
