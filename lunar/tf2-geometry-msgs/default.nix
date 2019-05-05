
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, python-orocos-kdl, catkin, tf2-ros, tf2, rostest, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf2-geometry-msgs";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_geometry_msgs/0.5.20-0.tar.gz;
    sha256 = "0f0033226be24a3baa24831031f5d99b0d877d848c3cb5f5df8d2fbce3706273";
  };

  buildInputs = [ orocos-kdl python-orocos-kdl tf2-ros tf2 geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ orocos-kdl python-orocos-kdl tf2-ros tf2 geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
