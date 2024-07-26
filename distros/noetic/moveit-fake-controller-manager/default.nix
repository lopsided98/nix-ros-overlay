
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-fake-controller-manager";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_fake_controller_manager/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "1d8ead834b981b15b0a27ca7e894344f6e5ae9d3c50f77b5f4ab9d37132f3e7b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A fake controller manager plugin for MoveIt.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
