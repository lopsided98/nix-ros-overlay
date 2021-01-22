
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, diff-drive-controller, gazebo-dev, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, nav-msgs, roscpp, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "a561a1003237ae2a2536e654a5208639e701f2cd308775147aaaca418c96f02f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ compressed-image-transport diff-drive-controller gazebo-dev gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs joint-state-controller leo-description nav-msgs roscpp topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and other resources for simulating Leo Rover in Gazebo.'';
    license = with lib.licenses; [ mit ];
  };
}
