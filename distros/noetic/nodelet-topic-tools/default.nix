
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, message-filters, nodelet, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-nodelet-topic-tools";
  version = "1.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_topic_tools/1.10.2-1.tar.gz";
    name = "1.10.2-1.tar.gz";
    sha256 = "c05691304366f3249aac1cb411f3d29c45908bb72a30e917df319391bc67ed76";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost dynamic-reconfigure message-filters nodelet pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains common nodelet tools such as a mux, demux and throttle.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
