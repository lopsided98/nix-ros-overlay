
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, controller-manager, diff-drive-controller, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, leo-gazebo-plugins, leo-gazebo-worlds, nav-msgs, robot-state-publisher, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "5b4507f3a0811debf7e76b83c1e59991848313758131c4f6dee3efb3e6acfc8d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ compressed-image-transport controller-manager diff-drive-controller gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs joint-state-controller leo-description leo-gazebo-plugins leo-gazebo-worlds nav-msgs robot-state-publisher topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and other resources for simulating Leo Rover in Gazebo.'';
    license = with lib.licenses; [ mit ];
  };
}
