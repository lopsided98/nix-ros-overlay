
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-profiler-msgs, std-msgs, catkin, roscpp, qt5 }:
buildRosPackage {
  pname = "ros-melodic-swri-profiler-tools";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/melodic/swri_profiler_tools/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "e3a2a60bb840c74380dbed0c880033551237c4440ef2768d825bf983e41ea6e2";
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
