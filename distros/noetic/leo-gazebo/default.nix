
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, diff-drive-controller, gazebo, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, nav-msgs, roscpp, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "1c1688e5bd1ca76e10bce431ad1d43c2f7452505a1d32b7463ba57a422c14b49";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ compressed-image-transport diff-drive-controller gazebo gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs joint-state-controller leo-description nav-msgs roscpp topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The leo_gazebo package'';
    license = with lib.licenses; [ mit ];
  };
}
