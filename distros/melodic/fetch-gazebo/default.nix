
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, boost, catkin, control-msgs, control-toolbox, depth-image-proc, fetch-description, gazebo, gazebo-dev, gazebo-plugins, gazebo-ros, image-proc, nodelet, rgbd-launch, robot-controllers, robot-controllers-interface, sensor-msgs, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "e368f635946556a5334f6daeef1d2ab3c2be880fa3429b71e14ccf15ec5814f1";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin gazebo-dev ];
  propagatedBuildInputs = [ actionlib boost control-msgs control-toolbox depth-image-proc fetch-description gazebo gazebo-plugins gazebo-ros image-proc nodelet rgbd-launch robot-controllers robot-controllers-interface sensor-msgs trajectory-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
