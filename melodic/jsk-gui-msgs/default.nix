
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-gui-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/jsk_gui_msgs/4.3.1-0.tar.gz;
    sha256 = "6af87adf6d809a7311c1b561093859751c7c2575791e5dc89e089a8dd98a118d";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ message-generation std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''jsk_gui_msgs'';
    #license = lib.licenses.Apache 2.0;
  };
}
