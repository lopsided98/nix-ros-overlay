
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, rosconsole-bridge, diagnostic-updater, odva-ethernetip, roslaunch, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-omron-os32c-driver";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/omron-release/archive/release/melodic/omron_os32c_driver/0.1.3-0.tar.gz;
    sha256 = "ebf659a3b4a959dc4c76afcd198ebcb73f574772b9af68d3279965d14a3369b8";
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
