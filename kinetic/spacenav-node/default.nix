
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, xorg, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-spacenav-node";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/spacenav_node/1.12.0-0.tar.gz;
    sha256 = "cb7710358b2a132d9d1cff270d60806d62718102e7604e5bb1254bed03fb8034";
  };

  buildInputs = [ sensor-msgs roscpp xorg.libX11 geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs roscpp xorg.libX11 geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
