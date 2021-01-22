
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-roch-description";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_description/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "14d2a9581abd500c47276e48a1579c7aa203bc7e1b62b6dccec2b684bc5d8f55";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer Roch URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
