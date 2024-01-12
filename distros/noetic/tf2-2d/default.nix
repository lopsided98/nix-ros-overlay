
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, roslint, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-tf2-2d";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/tf2_2d-release/archive/release/noetic/tf2_2d/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "e6391d874cb244f062336064435ca13899bd50f71657ad6b3f928b0f85aa212a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ eigen roscpp tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of 2D geometry classes modeled after the 3D geometry classes in tf2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
