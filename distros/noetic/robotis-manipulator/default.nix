
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, roscpp }:
buildRosPackage {
  pname = "ros-noetic-robotis-manipulator";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_manipulator-release/archive/release/noetic/robotis_manipulator/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "d768b0269636ce2e41c6b4dce982eee5d2363abde6f5172fbadcd8e3f39a7b29";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the manipulation API and functions for controlling the manipulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
