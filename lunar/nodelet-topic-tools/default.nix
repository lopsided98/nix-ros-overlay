
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, catkin, message-filters, roscpp, dynamic-reconfigure, nodelet }:
buildRosPackage {
  pname = "ros-lunar-nodelet-topic-tools";
  version = "1.9.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/nodelet_core-release/archive/release/lunar/nodelet_topic_tools/1.9.14-0.tar.gz;
    sha256 = "5e02350539d91bccd5cdcf8c9d14a2e7e73eeb75246f75bc13c74aefe27c2b97";
  };

  buildInputs = [ boost dynamic-reconfigure ];
  propagatedBuildInputs = [ pluginlib boost message-filters nodelet dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains common nodelet tools such as a mux, demux and throttle.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
