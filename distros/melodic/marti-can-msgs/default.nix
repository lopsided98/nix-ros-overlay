
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-marti-can-msgs";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_can_msgs/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "b6450f1cc6b5efad8ec970461249180c2ed668459ed2015ddfb8e3756aeaa009";
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
