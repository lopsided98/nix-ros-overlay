
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-geos-cmake-module";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/geos_cmake_module-release/archive/release/melodic/geos_cmake_module/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "42f6d0459dd82805452093922bdf8e7afec3119f4aa1eb205442949b5dae5b9b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cmake module for using the libgeos geometry library with ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
