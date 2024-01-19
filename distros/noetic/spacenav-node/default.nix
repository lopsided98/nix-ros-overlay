
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libspnav, roscpp, roslint, sensor-msgs, xorg }:
buildRosPackage {
  pname = "ros-noetic-spacenav-node";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/spacenav_node/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "8ef279005e45b2f083cf23b15ccf1ab440e601f7bf2ae194deda441c20396a9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ geometry-msgs libspnav roscpp sensor-msgs xorg.libX11 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
