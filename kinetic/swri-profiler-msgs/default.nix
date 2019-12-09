
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-swri-profiler-msgs";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/kinetic/swri_profiler_msgs/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "972c265ff70c1e2cb845333541a3c2ff58435bd5a296b454f0c65586f8390b58";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for the swri_profiler tool.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
