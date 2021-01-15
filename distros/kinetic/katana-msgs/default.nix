
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-katana-msgs";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_msgs/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "1506075d75625aa7ccc7cbf70f61f4c865b450319d2f4db60929b2715a4f3f00";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages specific to the Neuronics Katana arm.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
