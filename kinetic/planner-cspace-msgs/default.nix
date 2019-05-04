
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-planner-cspace-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/kinetic/planner_cspace_msgs/0.3.1-0.tar.gz;
    sha256 = "c45b2c10dd46ce2021c1f2282859ab5b52364ab7882cac0ea2e3b2337587519b";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for planner_cspace package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
