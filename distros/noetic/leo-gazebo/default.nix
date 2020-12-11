
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, diff-drive-controller, gazebo-dev, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, nav-msgs, roscpp, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a0c3854e6aaf797676a06a6065b38a00a14d634e202bd54dd529dd4835d36525";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ compressed-image-transport diff-drive-controller gazebo-dev gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs joint-state-controller leo-description nav-msgs roscpp topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and other resources for simulating Leo Rover in Gazebo.'';
    license = with lib.licenses; [ mit ];
  };
}
