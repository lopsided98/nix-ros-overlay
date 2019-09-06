
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, catkin, message-filters, roscpp, dynamic-reconfigure, nodelet }:
buildRosPackage {
  pname = "ros-melodic-nodelet-topic-tools";
  version = "1.9.16";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/melodic/nodelet_topic_tools/1.9.16-0.tar.gz";
    name = "1.9.16-0.tar.gz";
    sha256 = "39f55bdfb39c520b29a3c6004ca8d359a2e2ffc8da9ed254ba38c180bd035ae3";
  };

  buildType = "catkin";
  buildInputs = [ boost dynamic-reconfigure ];
  propagatedBuildInputs = [ pluginlib boost message-filters roscpp dynamic-reconfigure nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains common nodelet tools such as a mux, demux and throttle.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
