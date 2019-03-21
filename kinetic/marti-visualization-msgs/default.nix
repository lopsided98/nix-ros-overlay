
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-marti-visualization-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/kinetic/marti_visualization_msgs/0.8.0-0.tar.gz;
    sha256 = "9b9fd7ace91bd5be3eb238b6b6fe2a69af991b4c9b4e040127d77fa0153d077f";
  };

  propagatedBuildInputs = [ sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin sensor-msgs message-generation geometry-msgs ];

  meta = {
    description = ''marti_visualization_msgs'';
    #license = lib.licenses.BSD;
  };
}
