
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, hector-gazebo-plugins, catkin, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-robotnik-sensors";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/robotnik_sensors-release/archive/release/kinetic/robotnik_sensors/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "7bcd5743de51b2fc714fc8da916ebbe34761770f924e56d9df839d9eb8bd1c47";
  };

  buildType = "catkin";
  buildInputs = [ hector-gazebo-plugins xacro gazebo-plugins urdf ];
  propagatedBuildInputs = [ hector-gazebo-plugins gazebo-plugins xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robotnik standard sensors description. URDF and meshses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
