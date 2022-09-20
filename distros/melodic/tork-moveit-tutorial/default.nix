
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, moveit-commander, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-visualization, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-tork-moveit-tutorial";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/tork_moveit_tutorial-release/archive/release/melodic/tork_moveit_tutorial/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b559d39011e7c16f709e376dc1892eb9d2bfc489388218ce37d77eadfce596d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros moveit-commander moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-ros-visualization moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tork_moveit_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
