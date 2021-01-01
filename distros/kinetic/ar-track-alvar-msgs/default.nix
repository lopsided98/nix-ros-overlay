
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ar-track-alvar-msgs";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ar_track_alvar-release/archive/release/kinetic/ar_track_alvar_msgs/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "cfe0747bf3863120aa14df24c1983677446a90db3021d5ac1dd7c8d7b396a6e0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a ROS wrapper for Alvar, an open source AR tag tracking library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
