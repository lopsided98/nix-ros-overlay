
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager-py, catkin, codec-image-transport, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tello-driver";
  version = "0.3.1-r3";

  src = fetchurl {
    url = "https://github.com/appie-17/tello_driver-release/archive/release/kinetic/tello_driver/0.3.1-3.tar.gz";
    name = "0.3.1-3.tar.gz";
    sha256 = "c30b4004bec66b75ee020feae202c7a81e083d908d2834944110fdcd3e9db7db";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ camera-info-manager-py codec-image-transport cv-bridge dynamic-reconfigure geometry-msgs image-transport message-runtime nav-msgs rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''&gt;This package provides a ROS interface for the TelloPy library.
  Development of this ROS package pursues not to modify the TelloPy library, 
  instead apply any modification or addition to the ros_driver package in an encapsulated manner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
