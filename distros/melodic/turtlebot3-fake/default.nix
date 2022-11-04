
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, robot-state-publisher, roscpp, sensor-msgs, std-msgs, tf, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-fake";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_fake/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "f7974e0d8015e3a089be733f06c7155d83ec20dd103c54330d6a65cebc352de9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs robot-state-publisher roscpp sensor-msgs std-msgs tf turtlebot3-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
