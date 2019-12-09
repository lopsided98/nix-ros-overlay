
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-marti-perception-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_perception_msgs/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "932dd1ea5a1543bb44c53eabdd16fbf0810a79b4d55089f7360ddaa4363ca974";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_perception_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
