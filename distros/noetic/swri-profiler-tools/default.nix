
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, std-msgs, swri-profiler-msgs }:
buildRosPackage {
  pname = "ros-noetic-swri-profiler-tools";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/noetic/swri_profiler_tools/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "c32f6430968ef94fac3e9ea20a83e225b0251e32077f25c7c4e62bf16bdde88d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase roscpp std-msgs swri-profiler-msgs ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''Provides tools for viewing data produced by nodes that use the
    swri_profiler library to output profiling information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
