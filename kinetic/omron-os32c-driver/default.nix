
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, diagnostic-updater, odva-ethernetip, roslaunch, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-omron-os32c-driver";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/omron-release/archive/release/kinetic/omron_os32c_driver/0.1.2-0.tar.gz;
    sha256 = "f32233951d32d26d96992ea97425445eedb4bebffa91ba7858deda27f156dc6e";
  };

  buildInputs = [ diagnostic-updater odva-ethernetip boost sensor-msgs roscpp ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ diagnostic-updater odva-ethernetip boost sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface driver for Omron OS32C Lidar via Ethernet/IP (Industrial Protocol)'';
    #license = lib.licenses.BSD;
  };
}
