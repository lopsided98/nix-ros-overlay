
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-toolbox, depth-image-proc, fetch-description, gazebo, gazebo-plugins, gazebo-ros, gazebo_7, geometry-msgs, image-proc, nodelet, rgbd-launch, robot-controllers, robot-controllers-interface, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fetch-gazebo";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/kinetic/fetch_gazebo/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "17fc175e223a93caefc042fd6eeea7ba7fb54f33113e2f5690f9649119867220";
  };

  buildType = "catkin";
  buildInputs = [ angles gazebo_7 ];
  propagatedBuildInputs = [ actionlib control-toolbox depth-image-proc fetch-description gazebo gazebo-plugins gazebo-ros geometry-msgs image-proc nodelet rgbd-launch robot-controllers robot-controllers-interface trajectory-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
