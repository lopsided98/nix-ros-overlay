
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-profiler-msgs, std-msgs, catkin, roscpp, rospy, rosbridge-server, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-swri-profiler";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/kinetic/swri_profiler/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "5d9314277f95b1faebf7950db341206a2dcfa139d8cfa13ef490170c22a90678";
  };

  buildType = "catkin";
  buildInputs = [ swri-profiler-msgs std-msgs roscpp diagnostic-updater rospy ];
  propagatedBuildInputs = [ swri-profiler-msgs std-msgs roscpp rospy rosbridge-server diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_profiler provides basic tools for real-time selective
    profiling of ROS C++ nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
