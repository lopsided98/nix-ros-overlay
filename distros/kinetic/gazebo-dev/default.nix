
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo_7 }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-dev";
  version = "2.5.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_dev/2.5.20-1.tar.gz";
    name = "2.5.20-1.tar.gz";
    sha256 = "fb2e1e244eab9715967c423576f6f996d976a4ddcae99fdd0a01cdd5429829d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo_7 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
