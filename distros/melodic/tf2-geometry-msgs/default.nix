
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl, python-orocos-kdl, ros-environment, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-geometry-msgs";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_geometry_msgs/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "b660accdb1497e291e5bbfce2746f3da5da2b072acad53d40afb03fe6eb3d91c";
  };

  buildType = "catkin";
  checkInputs = [ ros-environment rostest ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl python-orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
