
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, eigen, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-robotis-manipulator";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_manipulator-release/archive/release/melodic/robotis_manipulator/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "3e32af08b49c5a8b698e9e98b01c1fee182559c0b5e96025fc1be922ff306478";
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
