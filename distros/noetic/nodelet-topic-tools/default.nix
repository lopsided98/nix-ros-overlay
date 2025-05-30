
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, message-filters, nodelet, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-nodelet-topic-tools";
  version = "1.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_topic_tools/1.11.2-1.tar.gz";
    name = "1.11.2-1.tar.gz";
    sha256 = "8acfc686680d71c40fb7fb04f1fcd176828bb890544d4ce5c15af66bf7438f0e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost dynamic-reconfigure message-filters nodelet pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains common nodelet tools such as a mux, demux and throttle.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
