
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-eigen";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_eigen/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "e1a0ca64f3d31caa4f9b6cb15f06fc49550c5d0432ac4710a303b32d35396cbf";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "tf2_eigen";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
