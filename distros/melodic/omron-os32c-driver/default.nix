
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, odva-ethernetip, rosconsole-bridge, roscpp, roslaunch, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-omron-os32c-driver";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/omron-release/archive/release/melodic/omron_os32c_driver/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "0df734134fffa43ce8c66f761be34584663afe3595c08e5275fc9c538f8825c4";
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
