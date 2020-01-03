
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosmake";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosmake/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "002be3a8cc840df70a0499cf6b14a090cdc330f486315b90547c72f3d20fd679";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosmake is a ros dependency aware build tool which can be used to
     build all dependencies in the correct order.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
