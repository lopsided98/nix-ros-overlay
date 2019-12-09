
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, dynamic-reconfigure, std-msgs, catkin, camera-info-manager-py, image-transport, codec-image-transport, cv-bridge, rospy, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tello-driver";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/appie-17/tello_driver-release/archive/release/kinetic/tello_driver/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "af6857900ebafb08ae73ecf584f3ee5a3085b94ca1acb9793ff0463f7446bc3b";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure std-msgs camera-info-manager-py codec-image-transport image-transport cv-bridge rospy message-generation nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure std-msgs camera-info-manager-py codec-image-transport image-transport cv-bridge rospy message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''&gt;This package provides a ROS interface for the TelloPy library.
  Development of this ROS package pursues not to modify the TelloPy library, 
  instead apply any modification or addition to the ros_driver package in an encapsulated manner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
