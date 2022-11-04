
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, joint-state-publisher, robot-state-publisher, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-description";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/melodic/fsrobo_r_description/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "65ba35c5d734c65a9e8dffa971e527a2293755fb3e957052d2b3a9e2277b613f";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ gazebo joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>URDF Description package for FSRobo-R</p>
    <p>This package contains configuration data, 3D models and launch files
for FSRobo-R robot</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
