
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, kobuki-safety-controller, roscpp, turtlebot-bringup, yocs-velocity-smoother }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-teleop";
  version = "2.4.2";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_teleop/2.4.2-0.tar.gz";
    name = "2.4.2-0.tar.gz";
    sha256 = "bea11a0f8177cd5d22af74b12ca02a61755dac877b0c4f723ae692a96e79c67a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs joy kobuki-safety-controller roscpp turtlebot-bringup yocs-velocity-smoother ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using joysticks or keyboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
