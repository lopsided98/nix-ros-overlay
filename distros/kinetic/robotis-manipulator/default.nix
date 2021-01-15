
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-robotis-manipulator";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_manipulator-release/archive/release/kinetic/robotis_manipulator/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "ac35dcb7b7d8bcb1d11aba5f1edd0e131727409fd335b3a7f32fc5bdd24a470c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the manipulation API and functions for controlling the manipulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
