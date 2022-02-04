
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-marti-perception-msgs";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_perception_msgs/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "91113e28b14b3c9635313969df9660cd5c8154b5839736e1540405d17b22b204";
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
