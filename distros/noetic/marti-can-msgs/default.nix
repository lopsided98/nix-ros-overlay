
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marti-can-msgs";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/noetic/marti_can_msgs/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "babb64d0980f74a1fb67a3cf8ad983f6fbe758a16f3dc0aa9de22088fef9ad45";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_can_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
