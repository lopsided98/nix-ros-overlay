
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, odva-ethernetip, rosconsole-bridge, roscpp, roslaunch, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-omron-os32c-driver";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/omron-release/archive/release/noetic/omron_os32c_driver/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4d52357a2d1273510c0ba289c8964a8d5b7d41f0d4f1d130ad7635f559f730b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ boost diagnostic-updater odva-ethernetip rosconsole-bridge roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface driver for Omron OS32C Lidar via Ethernet/IP (Industrial Protocol)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
