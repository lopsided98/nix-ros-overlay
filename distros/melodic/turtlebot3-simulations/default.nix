
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-fake, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-simulations";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_simulations/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "cd6e3fdbe9a6e53715475eee65bf1a0aff709ac94b41567e7c1cb198f7300e96";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtlebot3-fake turtlebot3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the turtlebot3 simulation (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
