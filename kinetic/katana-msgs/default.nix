
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-katana-msgs";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_msgs/1.1.2-0.tar.gz;
    sha256 = "1506075d75625aa7ccc7cbf70f61f4c865b450319d2f4db60929b2715a4f3f00";
  };

  propagatedBuildInputs = [ sensor-msgs message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin sensor-msgs message-generation actionlib-msgs ];

  meta = {
    description = ''This package contains messages specific to the Neuronics Katana arm.'';
    #license = lib.licenses.GPL;
  };
}
