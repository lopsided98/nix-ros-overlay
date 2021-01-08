
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, hector-gazebo-plugins, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-robotnik-sensors";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/robotnik_sensors-release/archive/release/kinetic/robotnik_sensors/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "7bcd5743de51b2fc714fc8da916ebbe34761770f924e56d9df839d9eb8bd1c47";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins hector-gazebo-plugins urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robotnik standard sensors description. URDF and meshses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
