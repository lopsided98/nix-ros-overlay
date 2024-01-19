
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-roboticsgroup-upatras-gazebo-plugins";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/roboticsgroup/roboticsgroup_upatras_gazebo_plugins-release/archive/release/noetic/roboticsgroup_upatras_gazebo_plugins/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "d99b36195316183ec91279bda2938897e29eebea5f4d29236c10e266f8df351e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of gazebo plugins'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
