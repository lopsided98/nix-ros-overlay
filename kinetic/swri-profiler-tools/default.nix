
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, swri-profiler-msgs, qt5, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-swri-profiler-tools";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/kinetic/swri_profiler_tools/0.1.0-0.tar.gz;
    sha256 = "5376cae7440e127ece3124e545bcdc3f529a1e452e21ed21030e996e2daf497c";
  };

  buildInputs = [ std-msgs swri-profiler-msgs roscpp qt5.qtbase ];
  propagatedBuildInputs = [ std-msgs swri-profiler-msgs roscpp qt5.qtbase ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''Provides tools for viewing data produced by nodes that use the
    swri_profiler library to output profiling information.'';
    #license = lib.licenses.BSD;
  };
}
