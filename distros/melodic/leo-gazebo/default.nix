
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, diff-drive-controller, gazebo, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, nav-msgs, roscpp, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-leo-gazebo";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/melodic/leo_gazebo/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "16cb13c2c63cc8f96d4352df6d5b2c18480830d82580bfb757ff96fdf181538a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ compressed-image-transport diff-drive-controller gazebo gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs joint-state-controller leo-description nav-msgs roscpp topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The leo_gazebo package'';
    license = with lib.licenses; [ mit ];
  };
}
