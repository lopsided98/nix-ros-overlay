
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl, python3Packages, ros-environment, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-geometry-msgs";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_geometry_msgs/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "3e926c82ad818deb974a5b2f3302aff716bc1a79a9379b89e9741b20652ee0fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ ros-environment rostest ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl python3Packages.pykdl tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "tf2_geometry_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
