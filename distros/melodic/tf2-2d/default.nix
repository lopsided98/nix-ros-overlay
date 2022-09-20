
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, roslint, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf2-2d";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/tf2_2d-release/archive/release/melodic/tf2_2d/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "1d4a60de80ea7adfb5894381d0b16e8d7257230a93caa3eaa9411e248a154847";
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
