
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hector-worldmodel-msgs";
  version = "0.3.4";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_worldmodel-release/archive/release/kinetic/hector_worldmodel_msgs/0.3.4-0.tar.gz;
    sha256 = "1ab708070d327862301d048d17a06346ea18b3e72eeacc2bcf756b1060f2da9f";
  };

  propagatedBuildInputs = [ sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin sensor-msgs message-generation geometry-msgs ];

  meta = {
    description = ''hector_worldmodel_msgs is a message package to comes with the hector_worldmodel stack.
     The messages can be used to send percepts from images (hector_worldmodel_msgs/ImagePercept) or other sources
     (hector_worldmodel_msgs/PosePercept) to the hector_object_tracker node. The tracker publishes model updates as
     hector_worldmodel_msgs/Object messages and latches the whole model state as a hector_worldmodel_msgs/ObjectModel message.'';
    #license = lib.licenses.BSD;
  };
}
