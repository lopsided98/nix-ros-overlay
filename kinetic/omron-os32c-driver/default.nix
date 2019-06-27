
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, rosconsole-bridge, diagnostic-updater, odva-ethernetip, roslaunch, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-omron-os32c-driver";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/omron-release/archive/release/kinetic/omron_os32c_driver/1.0.0-0.tar.gz;
    sha256 = "fd8322f27afa7469fe6231186d52291d09e77be3d246b65ecc8e59dadc8854c8";
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
