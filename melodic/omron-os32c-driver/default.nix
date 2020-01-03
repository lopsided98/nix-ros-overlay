
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, odva-ethernetip, rosconsole-bridge, roscpp, roslaunch, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-omron-os32c-driver";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/omron-release/archive/release/melodic/omron_os32c_driver/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "680c4b43a5231555f0b1f42d5dcbe1a6345ce1ec19aa7a0e2a9024676070797e";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ boost diagnostic-updater odva-ethernetip rosconsole-bridge roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface driver for Omron OS32C Lidar via Ethernet/IP (Industrial Protocol)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
