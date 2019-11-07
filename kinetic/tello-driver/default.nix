
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, cv-bridge, catkin, nav-msgs, message-generation, message-runtime, rospy, std-msgs, dynamic-reconfigure, codec-image-transport, camera-info-manager-py, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tello-driver";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/appie-17/tello_driver-release/archive/release/kinetic/tello_driver/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "af6857900ebafb08ae73ecf584f3ee5a3085b94ca1acb9793ff0463f7446bc3b";
  };

  buildType = "catkin";
  buildInputs = [ image-transport sensor-msgs cv-bridge rospy nav-msgs message-generation dynamic-reconfigure std-msgs codec-image-transport camera-info-manager-py geometry-msgs ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge rospy nav-msgs message-runtime dynamic-reconfigure std-msgs codec-image-transport camera-info-manager-py geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''&gt;This package provides a ROS interface for the TelloPy library.
  Development of this ROS package pursues not to modify the TelloPy library, 
  instead apply any modification or addition to the ros_driver package in an encapsulated manner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
