
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-usb-cam-hardware-interface";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/melodic/usb_cam_hardware_interface/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "96288caef7a5aed8832e30d5a874e820179435133deacf8159186cd2d7ab2c33";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware_interface package'';
    license = with lib.licenses; [ mit ];
  };
}
