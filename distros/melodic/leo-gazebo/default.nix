
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, diff-drive-controller, gazebo, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, nav-msgs, roscpp, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-leo-gazebo";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_gazebo-release/archive/release/melodic/leo_gazebo/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8f1f3c9d6274ce78cd8c847b41ce421704e9478bd17c05c9bcda5d89203484e6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ compressed-image-transport diff-drive-controller gazebo gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs joint-state-controller leo-description nav-msgs roscpp topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The leo_gazebo package'';
    license = with lib.licenses; [ mit ];
  };
}
