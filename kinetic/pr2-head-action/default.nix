
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, sensor-msgs, message-filters, geometry-msgs, trajectory-msgs, tf, actionlib, catkin, roscpp, pr2-controllers-msgs, tf-conversions, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-pr2-head-action";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/pr2_head_action/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "1f95ea36f8f6777b0f49fe7a04379c0e09ce2ecd758be99f860464a8e6d595aa";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl sensor-msgs message-filters geometry-msgs trajectory-msgs tf actionlib roscpp pr2-controllers-msgs tf-conversions kdl-parser ];
  propagatedBuildInputs = [ orocos-kdl sensor-msgs message-filters geometry-msgs trajectory-msgs tf actionlib roscpp pr2-controllers-msgs tf-conversions kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The PR2 head action is a node that provides an action interface for
  pointing the head of the PR2.  It passes trajectory goals to the
  controller, and reports success when they have finished executing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
