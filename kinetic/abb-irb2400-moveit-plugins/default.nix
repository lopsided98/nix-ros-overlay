
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb2400-moveit-plugins";
  version = "1.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb2400_moveit_plugins/1.3.0-1.tar.gz;
    sha256 = "e52a4bbe761932e7b0c4baf47184b690153aec1457693ad5eb6ee9cced11a70b";
  };

  buildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
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
    #license = lib.licenses.BSD;
  };
}
