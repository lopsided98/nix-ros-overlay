
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, diff-drive-controller, gazebo-dev, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, nav-msgs, roscpp, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-leo-gazebo";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/melodic/leo_gazebo/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "fd5f430b97e02757675f5c3520f25d52511891abe1864ba393bb9d72880b23d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ compressed-image-transport diff-drive-controller gazebo-dev gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs joint-state-controller leo-description nav-msgs roscpp topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and other resources for simulating Leo Rover in Gazebo.'';
    license = with lib.licenses; [ mit ];
  };
}
