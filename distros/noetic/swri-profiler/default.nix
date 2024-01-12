
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, rosbridge-server, roscpp, rospy, std-msgs, swri-profiler-msgs }:
buildRosPackage {
  pname = "ros-noetic-swri-profiler";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/noetic/swri_profiler/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "ed7a03d7ad37030a214da68b742c54dbc0830dd1c022d878066ab3785c636c08";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-updater rosbridge-server roscpp rospy std-msgs swri-profiler-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_profiler provides basic tools for real-time selective
    profiling of ROS C++ nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
