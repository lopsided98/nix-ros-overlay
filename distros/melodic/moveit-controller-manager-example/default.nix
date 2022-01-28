
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-controller-manager-example";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_controller_manager_example/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "29db84056386658a974326a447244b577071cdb94fda971a9e3c8c57fc1fbd8c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An example controller manager plugin for MoveIt. This is not functional code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
