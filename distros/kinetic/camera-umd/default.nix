
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jpeg-streamer, uvc-camera }:
buildRosPackage {
  pname = "ros-kinetic-camera-umd";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/kinetic/camera_umd/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "3cdbab3dcfba338eee99571f58825da2404aa436c379c50ba904deb978b2a923";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jpeg-streamer uvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UMD camera metapackage'';
    license = with lib.licenses; [ gpl2 ];
  };
}
