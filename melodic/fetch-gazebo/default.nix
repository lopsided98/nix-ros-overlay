
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-plugins, robot-controllers-interface, actionlib, boost, gazeboSimulator, rgbd-launch, angles, image-proc, xacro, gazebo-ros, depth-image-proc, control-msgs, trajectory-msgs, catkin, gazebo-dev, robot-controllers, fetch-description, nodelet, control-toolbox, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "e368f635946556a5334f6daeef1d2ab3c2be880fa3429b71e14ccf15ec5814f1";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros boost control-toolbox sensor-msgs gazebo-dev gazebo-plugins robot-controllers-interface robot-controllers angles ];
  propagatedBuildInputs = [ gazebo-ros depth-image-proc boost control-msgs control-toolbox sensor-msgs trajectory-msgs gazeboSimulator.gazebo gazebo-plugins robot-controllers-interface robot-controllers rgbd-launch actionlib fetch-description image-proc nodelet xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
