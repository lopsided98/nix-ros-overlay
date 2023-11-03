
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-configuration-msgs";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_configuration_msgs/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "8ab4aaf233887c16af34f407db03e0ecf5b0173a20eedd7bc9e5046b9766ef94";
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
