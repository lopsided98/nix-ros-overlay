
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, dynamic-reconfigure, image-transport, libuvc, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-libuvc-camera";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/noetic/libuvc_camera/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "b329b9e56923f8b9c6c8bb01985d470769cb57a54e08429b496615bd009dcb89";
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
