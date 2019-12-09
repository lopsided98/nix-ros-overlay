
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazeboSimulator, xacro, control-toolbox, nodelet, sensor-msgs, robot-controllers-interface, image-proc, depth-image-proc, fetch-description, catkin, angles, gazebo-ros, control-msgs, rgbd-launch, trajectory-msgs, boost, gazebo-dev, actionlib, robot-controllers, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "e368f635946556a5334f6daeef1d2ab3c2be880fa3429b71e14ccf15ec5814f1";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs robot-controllers-interface control-toolbox gazebo-ros angles robot-controllers gazebo-plugins gazebo-dev ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs xacro boost robot-controllers-interface control-toolbox gazeboSimulator.gazebo image-proc actionlib depth-image-proc fetch-description nodelet control-msgs gazebo-ros robot-controllers gazebo-plugins rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
