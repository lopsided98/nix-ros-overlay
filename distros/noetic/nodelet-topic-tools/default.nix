
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, message-filters, nodelet, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-nodelet-topic-tools";
  version = "1.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_topic_tools/1.10.1-1.tar.gz";
    name = "1.10.1-1.tar.gz";
    sha256 = "425324f1b12a552edc960f8a003f4ca8a986e56cf36e0848b489fb7327412838";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost dynamic-reconfigure message-filters nodelet pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains common nodelet tools such as a mux, demux and throttle.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
