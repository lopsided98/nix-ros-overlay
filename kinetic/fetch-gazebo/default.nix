
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, gazeboSimulator, xacro, geometry-msgs, control-toolbox, robot-controllers-interface, robot-controllers, image-proc, catkin, gazebo-ros, actionlib, depth-image-proc, nodelet, angles, fetch-description, gazebo-plugins, rgbd-launch }:
buildRosPackage {
  pname = "ros-kinetic-fetch-gazebo";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/kinetic/fetch_gazebo/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "17fc175e223a93caefc042fd6eeea7ba7fb54f33113e2f5690f9649119867220";
  };

  buildType = "catkin";
  buildInputs = [ robot-controllers-interface control-toolbox gazebo-ros gazeboSimulator.gazebo7 angles robot-controllers ];
  propagatedBuildInputs = [ trajectory-msgs xacro geometry-msgs robot-controllers-interface control-toolbox gazeboSimulator.gazebo image-proc actionlib depth-image-proc fetch-description nodelet gazebo-ros robot-controllers gazebo-plugins rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
