
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-profiler-msgs, std-msgs, catkin, roscpp, rospy, rosbridge-server, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-swri-profiler";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/melodic/swri_profiler/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "5fc011fc3d5f908f7e6e3accbf3dd2e73634416dfefa2d412495d18f0efbea67";
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
