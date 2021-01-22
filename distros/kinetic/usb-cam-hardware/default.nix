
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, hardware-interface, nodelet, pluginlib, roscpp, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-usb-cam-hardware";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/kinetic/usb_cam_hardware/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "9b76ad745241a7374a784fd041630e5661a55b0fcd6d0bc3ee64cabac7289c55";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager hardware-interface nodelet pluginlib roscpp usb-cam-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware package'';
    license = with lib.licenses; [ mit ];
  };
}
