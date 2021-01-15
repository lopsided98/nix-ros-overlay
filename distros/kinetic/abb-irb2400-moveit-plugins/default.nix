
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb2400-moveit-plugins";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb2400_moveit_plugins/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "716b4c98c3a7b11f3735f10800e64163a4313ab4cd47b7d33cd87cc85996b113";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt plugins for the ABB 2400 (and variants).
    </p>
    <p>
      This package contains plugins for use with MoveIt and ABB 2400 manipulators.
      Plugins included support the 2400. See the ABB 2400 support package for
      information on used joint angle and velocity limits.
    </p>
    <p>
      Before using any of the plugins included in this package, be sure to
      check they are correct for the particular robot model and configuration
      you intend to use them with.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
