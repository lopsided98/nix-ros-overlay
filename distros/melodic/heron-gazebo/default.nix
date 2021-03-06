
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hector-gazebo-plugins, heron-msgs, interactive-marker-twist-server, nav-msgs, rospy, sensor-msgs, tf, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-worlds }:
buildRosPackage {
  pname = "ros-melodic-heron-gazebo";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_simulator-release/archive/release/melodic/heron_gazebo/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "036573f4c61aa358f8a720804de68b0f1d47af000e109348fef9be4d0001eb6d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs hector-gazebo-plugins heron-msgs interactive-marker-twist-server nav-msgs rospy sensor-msgs tf uuv-gazebo-ros-plugins-msgs uuv-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulator package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
