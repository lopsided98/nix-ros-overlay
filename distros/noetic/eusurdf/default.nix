
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf-jsk-patch, gazebo-ros, python3Packages, roseus, rostest }:
buildRosPackage {
  pname = "ros-noetic-eusurdf";
  version = "0.4.4-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/eusurdf/0.4.4-2.tar.gz";
    name = "0.4.4-2.tar.gz";
    sha256 = "ddc05b743572e8dc8e9ac5ed0b1898030cd1603dcab5483db037d8074f728532";
  };

  buildType = "catkin";
  buildInputs = [ catkin roseus ];
  propagatedBuildInputs = [ collada-urdf-jsk-patch gazebo-ros python3Packages.lxml rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
