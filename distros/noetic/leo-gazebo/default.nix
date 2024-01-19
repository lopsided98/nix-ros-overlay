
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, controller-manager, diff-drive-controller, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, leo-gazebo-plugins, leo-gazebo-worlds, nav-msgs, robot-state-publisher, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "289c73e4ad9ff8c54da57f045fd2113a1412739d9afcd810007565fa0b7257e3";
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
