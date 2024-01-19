
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, kdl-parser, message-filters, orocos-kdl, pr2-controllers-msgs, roscpp, sensor-msgs, tf, tf-conversions, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-head-action";
  version = "1.10.18-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/pr2_head_action/1.10.18-1.tar.gz";
    name = "1.10.18-1.tar.gz";
    sha256 = "cecfe6fe06cc1135881c8e356de9897730ac9013ad6f160a1d5173e544791e72";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib geometry-msgs kdl-parser message-filters orocos-kdl pr2-controllers-msgs roscpp sensor-msgs tf tf-conversions trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The PR2 head action is a node that provides an action interface for
  pointing the head of the PR2.  It passes trajectory goals to the
  controller, and reports success when they have finished executing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
