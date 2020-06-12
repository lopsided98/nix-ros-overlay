
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marti-can-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/noetic/marti_can_msgs/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "62eba4a10e3fd9ee8f9a68501b48a2f1807051bf48fe61727c3e88c3b08ee852";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_can_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
