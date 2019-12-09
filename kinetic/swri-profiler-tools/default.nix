
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-profiler-msgs, std-msgs, catkin, roscpp, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-swri-profiler-tools";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/kinetic/swri_profiler_tools/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "7c3c3ed604ced697ba6661f2b860120fb7d7f00cec5192e940870f601b3ea793";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs swri-profiler-msgs roscpp qt5.qtbase ];
  propagatedBuildInputs = [ std-msgs swri-profiler-msgs roscpp qt5.qtbase ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''Provides tools for viewing data produced by nodes that use the
    swri_profiler library to output profiling information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
