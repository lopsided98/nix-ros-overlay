
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hector-gazebo-plugins, heron-msgs, interactive-marker-twist-server, nav-msgs, rospy, sensor-msgs, tf, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-worlds }:
buildRosPackage {
  pname = "ros-melodic-heron-gazebo";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_simulator-release/archive/release/melodic/heron_gazebo/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ce6d68691e4895ec7fa2bd83e0623441b5d43503c968ff5106b75101f7e96a5a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs hector-gazebo-plugins heron-msgs interactive-marker-twist-server nav-msgs rospy sensor-msgs tf uuv-gazebo-ros-plugins-msgs uuv-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulator package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
