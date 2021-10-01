
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-marti-perception-msgs";
  version = "0.10.0-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_perception_msgs/0.10.0-2.tar.gz";
    name = "0.10.0-2.tar.gz";
    sha256 = "a460597ba5de6f799b64e95f158a367a4e16bc032150cb7b0627caa6ef50000a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_perception_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
