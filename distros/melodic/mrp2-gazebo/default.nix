
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, mrp2-description }:
buildRosPackage {
  pname = "ros-melodic-mrp2-gazebo";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_simulator-release/archive/release/melodic/mrp2_gazebo/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f77fb0195ade42964f6a031678a1e7e2cff25fb9bf9b9322f9501d73bf09daa6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros mrp2-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and simulation files to run MRP2 in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
