
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hector-gazebo-plugins, heron-msgs, interactive-marker-twist-server, nav-msgs, rospy, sensor-msgs, tf, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-worlds }:
buildRosPackage {
  pname = "ros-kinetic-heron-gazebo";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_simulator-release/archive/release/kinetic/heron_gazebo/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "3f880f88cba2df907dc8bb42ccef0474a218792d3111f431373528e52d2aa585";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs hector-gazebo-plugins heron-msgs interactive-marker-twist-server nav-msgs rospy sensor-msgs tf uuv-gazebo-ros-plugins-msgs uuv-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulator package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
