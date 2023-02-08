
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gforth, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-wge100-camera-firmware";
  version = "1.8.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "wge100_driver-release";
        rev = "release/melodic/wge100_camera_firmware/1.8.2-1";
        sha256 = "sha256-5Bi8yHvW+sVP93sbemLKMd/QqvT+jzwzVdWbo4PVNXg=";
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
