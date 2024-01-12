
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo_11 }:
buildRosPackage {
  pname = "ros-noetic-gazebo-dev";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_dev/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "a594abb4b5f4da4c29c18f676ea9ade011da49794613788f1ddbe5c4273689bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo_11 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
