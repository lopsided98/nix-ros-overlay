
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, odva-ethernetip, rosconsole-bridge, roscpp, roslaunch, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-omron-os32c-driver";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/omron-release/archive/release/kinetic/omron_os32c_driver/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "fd8322f27afa7469fe6231186d52291d09e77be3d246b65ecc8e59dadc8854c8";
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
