
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marti-perception-msgs";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/noetic/marti_perception_msgs/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "8d077ba57afe640ac5e3ae355b8884f0fa38ea21eb2af9df0f93e803c756c24d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_perception_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
