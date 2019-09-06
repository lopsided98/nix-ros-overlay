
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, python-orocos-kdl, catkin, tf2-ros, tf2, rostest, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf2-geometry-msgs";
  version = "0.6.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_geometry_msgs/0.6.5-0.tar.gz";
    name = "0.6.5-0.tar.gz";
    sha256 = "f1516df538999a5fb7cb8eeaf71636c9572bba758adac8cdafbf5446918b7bbc";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl python-orocos-kdl tf2-ros tf2 geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ orocos-kdl python-orocos-kdl tf2-ros tf2 geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
