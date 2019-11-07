
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazeboSimulator, rviz, robot-state-publisher, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-description";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_description/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "f63a51390f109c55783f57258936c0d78325e3fb808f2ac09b9d5f9e3d54aa1a";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazeboSimulator.gazebo joint-state-publisher rviz robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>URDF Description package for FSRobo-R</p>
    <p>This package contains configuration data, 3D models and launch files
for FSRobo-R robot</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
