
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-description, toposens-driver, toposens-markers, toposens-msgs, toposens-pointcloud, toposens-sync }:
buildRosPackage {
  pname = "ros-kinetic-toposens";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens/2.0.3-1";
    name = "archive.tar.gz";
    sha256 = "572cfcf154624d5ee4108cf51c93411215b96184fb58bae36522bec76ff636a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ toposens-description toposens-driver toposens-markers toposens-msgs toposens-pointcloud toposens-sync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
