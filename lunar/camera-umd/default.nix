
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jpeg-streamer, uvc-camera }:
buildRosPackage {
  pname = "ros-lunar-camera-umd";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/lunar/camera_umd/0.2.5-0.tar.gz;
    sha256 = "8ade9df169b4e6bad5801fbe525fe47312e8f7bdf92fc386293114c05ed2ffa7";
  };

  propagatedBuildInputs = [ jpeg-streamer uvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UMD camera metapackage'';
    license = with lib.licenses; [ gpl2 ];
  };
}
