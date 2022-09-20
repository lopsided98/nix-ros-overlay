
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, dynamic-reconfigure, image-transport, libuvc, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-libuvc-camera";
  version = "0.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/melodic/libuvc_camera/0.0.10-1.tar.gz";
    name = "0.0.10-1.tar.gz";
    sha256 = "2ea19c5821e70fe6c63da750b35c6ae0dfff43faadca9f951c0137e5701834b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager dynamic-reconfigure image-transport libuvc nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''USB Video Class camera driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
