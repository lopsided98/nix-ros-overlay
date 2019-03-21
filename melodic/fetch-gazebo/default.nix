
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-plugins, robot-controllers-interface, actionlib, boost, gazeboSimulator, rgbd-launch, angles, image-proc, xacro, gazebo-ros, depth-image-proc, control-msgs, trajectory-msgs, catkin, robot-controllers, fetch-description, nodelet, control-toolbox, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo";
  version = "0.9.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo/0.9.0-0.tar.gz;
    sha256 = "3de1a63094549c804f48c55a41578e0875048f07ae1a4db26d31fe0e32647c49";
  };

  propagatedBuildInputs = [ gazebo-ros depth-image-proc boost control-msgs control-toolbox trajectory-msgs gazeboSimulator.gazebo sensor-msgs gazebo-plugins robot-controllers-interface robot-controllers rgbd-launch actionlib fetch-description image-proc nodelet xacro ];
  nativeBuildInputs = [ gazebo-ros boost gazeboSimulator.gazebo9 control-toolbox sensor-msgs catkin gazebo-plugins robot-controllers-interface robot-controllers angles ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    #license = lib.licenses.BSD;
  };
}
