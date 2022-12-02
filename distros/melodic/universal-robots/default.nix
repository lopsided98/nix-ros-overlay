
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ur-description, ur-gazebo, ur10-moveit-config, ur10e-moveit-config, ur16e-moveit-config, ur3-moveit-config, ur3e-moveit-config, ur5-moveit-config, ur5e-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-universal-robots";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/melodic/universal_robots/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "ecdcc84965d34016d04bf4d40060287066ad2b95c82c4dd7b73e3689dcb14bf8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ur-description ur-gazebo ur10-moveit-config ur10e-moveit-config ur16e-moveit-config ur3-moveit-config ur3e-moveit-config ur5-moveit-config ur5e-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support for Universal Robots manipulators (metapackage).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
