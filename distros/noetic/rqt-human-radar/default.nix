
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-noetic-rqt-human-radar";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/rqt_human_radar-release/archive/release/noetic/rqt_human_radar/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "778fad637e30634d4c5412aac8dc4e7a97866870d663c6f89902fb1fe8afeaa0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A radar-like visualization for humans in the scene, representing their position, orientation, engagement level'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
