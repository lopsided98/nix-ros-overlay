
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-control-msgs";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_control_msgs/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "a77f59d9b54bc1c9b62359c28494cc2d9b433e69c8a52b6af008172a70fe1486";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package containing the message definitions for the Clearpath Robotics OutdoorNav control selection module.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
