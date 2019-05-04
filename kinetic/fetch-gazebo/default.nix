
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, depth-image-proc, trajectory-msgs, control-toolbox, catkin, gazeboSimulator, gazebo-plugins, robot-controllers-interface, robot-controllers, rgbd-launch, actionlib, fetch-description, angles, image-proc, nodelet, xacro, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fetch-gazebo";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/kinetic/fetch_gazebo/0.8.2-0.tar.gz;
    sha256 = "17fc175e223a93caefc042fd6eeea7ba7fb54f33113e2f5690f9649119867220";
  };

  buildInputs = [ gazebo-ros control-toolbox robot-controllers-interface robot-controllers angles gazeboSimulator.gazebo7 ];
  propagatedBuildInputs = [ gazebo-ros depth-image-proc trajectory-msgs control-toolbox gazeboSimulator.gazebo gazebo-plugins robot-controllers-interface robot-controllers rgbd-launch actionlib fetch-description image-proc nodelet xacro geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
