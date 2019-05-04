
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, rosconsole-bridge, diagnostic-updater, odva-ethernetip, roslaunch, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-omron-os32c-driver";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/omron-release/archive/release/kinetic/omron_os32c_driver/0.1.3-0.tar.gz;
    sha256 = "d204bf0848d9c06d7bb24309c7015f80565ab9316e657ef34052e3fb36c33b64";
  };

  buildInputs = [ boost sensor-msgs rosconsole-bridge diagnostic-updater odva-ethernetip roscpp ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ boost sensor-msgs rosconsole-bridge diagnostic-updater odva-ethernetip roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface driver for Omron OS32C Lidar via Ethernet/IP (Industrial Protocol)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
