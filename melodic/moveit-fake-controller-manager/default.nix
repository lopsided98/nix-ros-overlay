
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-fake-controller-manager";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_fake_controller_manager/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "81da969af27c558f406c4349b97cc26710f55df559cf16b4123cea90d6c17f03";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib roscpp moveit-core moveit-ros-planning ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fake controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
