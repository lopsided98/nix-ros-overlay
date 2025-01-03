
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, message-filters, nodelet, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-nodelet-topic-tools";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_topic_tools/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "c23a96966e2a2c6e587f848765a75267b7e5312ee40b58db75db20009d0ca3bd";
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
