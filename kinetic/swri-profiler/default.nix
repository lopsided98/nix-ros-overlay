
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-profiler-msgs, catkin, rosbridge-server, diagnostic-updater, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-swri-profiler";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/kinetic/swri_profiler/0.1.0-0.tar.gz;
    sha256 = "71c6d17509b4af8e5213f518c277af04a9d9b0ce046b60baa705f5be60a88be7";
  };

  buildInputs = [ diagnostic-updater swri-profiler-msgs roscpp std-msgs ];
  propagatedBuildInputs = [ swri-profiler-msgs rosbridge-server diagnostic-updater std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_profiler provides basic tools for real-time selective
    profiling of ROS C++ nodes.'';
    license = with lib.licenses; [ "Copyright SwRI" ];
  };
}
