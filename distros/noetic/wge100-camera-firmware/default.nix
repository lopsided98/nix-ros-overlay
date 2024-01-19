
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gforth, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-wge100-camera-firmware";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/noetic/wge100_camera_firmware/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "c0e7fa0887305d507bbacd2e2f07628eeec1bbbda8e762d5c1601b5105c85714";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ gforth rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Source for the WGE100 Ethernet camera: Verilog source for the
    FPGA, Forth source for the camera firmware.  Intended for camera
    developers.  Note that a built binary from this package is checked
    in under wge100_camera/firmware_images/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
