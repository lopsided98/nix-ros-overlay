
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-eigen";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_eigen/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "9ba5b5696faf15ebe79e0af2dd443992181299443d6825539fbe2fa9ea9961ad";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
