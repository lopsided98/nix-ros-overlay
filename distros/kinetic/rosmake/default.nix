
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rosmake";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosmake/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "4c00046c95cc4876b37acfe86c3cd0dfc3d5887431b1629b33a4e9e1982b0d09";
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
