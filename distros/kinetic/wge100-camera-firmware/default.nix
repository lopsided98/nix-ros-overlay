
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gforth, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-wge100-camera-firmware";
  version = "1.8.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/kinetic/wge100_camera_firmware/1.8.2-0.tar.gz";
    name = "1.8.2-0.tar.gz";
    sha256 = "385de8d290eb6cb443e34d6796534eb49e6ace9fe28e01b71ecf89e03bfc69ad";
  };

  buildType = "catkin";
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
