
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, robot-state-publisher, roscpp, sensor-msgs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-nao-description";
  version = "0.5.15";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_robot-release/archive/release/kinetic/nao_description/0.5.15-0.tar.gz";
    name = "0.5.15-0.tar.gz";
    sha256 = "c35b71b27a5fa8e5bef94f76d56481471f7c6ddc93f16463d4e4537d6bdb362c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-filters robot-state-publisher roscpp sensor-msgs tf urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Description of the Nao robot model that can be used with robot_state_publisher to display the robot's state of joint angles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
