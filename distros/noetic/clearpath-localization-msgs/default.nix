
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-localization-msgs";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_localization_msgs/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "dfc32de3e525260dc4e5fb24857e4d89e490aac1340815174a6999115de70cbb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package containing the message definitions for the Clearpath Robotics OutdoorNav localization module.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
