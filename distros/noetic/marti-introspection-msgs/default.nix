
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marti-introspection-msgs";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/noetic/marti_introspection_msgs/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "14b01f49d4c7e7dc1a8222fc3ca5c59f9601d36f6bbf4999130b69456e81cf0d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_introspection_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
