
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hector-gazebo-plugins, heron-msgs, interactive-marker-twist-server, nav-msgs, rospy, sensor-msgs, tf, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-worlds }:
buildRosPackage {
  pname = "ros-kinetic-heron-gazebo";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_simulator-release/archive/release/kinetic/heron_gazebo/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "0e06e8db73f76846b64ed20d520eec0c62bc3c790b362bbcf317830cffccfbb5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs hector-gazebo-plugins heron-msgs interactive-marker-twist-server nav-msgs rospy sensor-msgs tf uuv-gazebo-ros-plugins-msgs uuv-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulator package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
