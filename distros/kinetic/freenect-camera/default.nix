
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, image-transport, libfreenect, log4cxx, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-freenect-camera";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/freenect_stack-release/archive/release/kinetic/freenect_camera/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "671ddb218106633626d497ab69fd7ccc2efaef187d2db5ae557ac9aa91873c7b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-transport libfreenect log4cxx nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect.  This is
    a port of the OpenNI driver that uses libfreenect instead, because
    on some systems with some devices it works better.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
