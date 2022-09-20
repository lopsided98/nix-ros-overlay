
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-eigen";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_eigen/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "02135ad22183bb62dc396a60c10dcc0a0fec44ec8f85a5d91130c31125dcd673";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
