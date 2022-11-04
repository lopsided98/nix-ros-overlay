
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, freenect, image-transport, log4cxx, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-freenect-camera";
  version = "0.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/freenect_stack-release/archive/release/melodic/freenect_camera/0.4.3-2.tar.gz";
    name = "0.4.3-2.tar.gz";
    sha256 = "86588c3b8cb5a41bc7ffabe05ccd0347248d6714997a888d662996b2a1db152f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure freenect image-transport log4cxx nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect.  This is
    a port of the OpenNI driver that uses libfreenect instead, because
    on some systems with some devices it works better.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
