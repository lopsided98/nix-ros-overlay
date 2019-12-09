
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, eigen, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-robotis-manipulator";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_manipulator-release/archive/release/kinetic/robotis_manipulator/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "473e954835e1ff720a6e7e95d402039ac435ea13d121a8df7bf1061b1bb9ffcb";
  };

  buildType = "catkin";
  buildInputs = [ eigen cmake-modules roscpp ];
  propagatedBuildInputs = [ eigen cmake-modules roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the manipulation API and functions for controlling the manipulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
