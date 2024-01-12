
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-configuration-msgs";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_configuration_msgs/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "57bdf422ca7119cabf6f1776bb22b039020d0b25bc0924e4ccdb68566d335302";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package containing the message definitions for the Clearpath Robotics OutdoorNav configuration module.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
