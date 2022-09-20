
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-bringup, toposens-description, toposens-driver, toposens-echo-driver, toposens-markers, toposens-msgs, toposens-pointcloud, toposens-sync }:
buildRosPackage {
  pname = "ros-melodic-toposens";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/melodic/toposens/2.3.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "0d2c0d277960c5bc1ee6e2d76d3e66ba535234781fba04662871a15fc2343082";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ toposens-bringup toposens-description toposens-driver toposens-echo-driver toposens-markers toposens-msgs toposens-pointcloud toposens-sync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Toposens 3D Ultrasound sensors.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
