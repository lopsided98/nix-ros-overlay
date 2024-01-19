
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hri, qt5, roscpp, rqt-gui, rqt-gui-cpp, tf }:
buildRosPackage {
  pname = "ros-noetic-rqt-human-radar";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/rqt_human_radar-release/archive/release/noetic/rqt_human_radar/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "6a0e5059377c856f35ce5eeb0fb1338ea03e1b31c1ff47fbbaffe843f0df913a";
  };

  buildType = "catkin";
  buildInputs = [ catkin roscpp ];
  propagatedBuildInputs = [ hri qt5.qtbase qt5.qtsvg rqt-gui rqt-gui-cpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A radar-like visualization for humans in the scene, representing their position, orientation, engagement level'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
