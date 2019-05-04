
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, catkin, message-filters, roscpp, dynamic-reconfigure, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-nodelet-topic-tools";
  version = "1.9.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/nodelet_core-release/archive/release/kinetic/nodelet_topic_tools/1.9.14-0.tar.gz;
    sha256 = "443517946f7ad2ee23784f83329b2fb60f4203f8306d99b1caa64b44241af1a3";
  };

  buildInputs = [ boost dynamic-reconfigure ];
  propagatedBuildInputs = [ pluginlib boost message-filters nodelet dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains common nodelet tools such as a mux, demux and throttle.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
