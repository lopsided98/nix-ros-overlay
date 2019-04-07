
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-marti-sensor-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/kinetic/marti_sensor_msgs/0.8.0-0.tar.gz;
    sha256 = "98cc0cc965a9112033fbe3fedbaca427d94c4936570c1b60a29568fe0f12e952";
  };

  buildInputs = [ message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_sensor_msgs'';
    #license = lib.licenses.BSD;
  };
}
