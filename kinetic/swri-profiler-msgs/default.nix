
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-swri-profiler-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/kinetic/swri_profiler_msgs/0.1.0-0.tar.gz;
    sha256 = "a1036164f098906d31ef4449ae16acb503f93585ee09f6d9eb87eb3ff0e0867d";
  };

  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Messages for the swri_profiler tool.'';
    #license = lib.licenses.Copyright SwRI;
  };
}
