
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jpeg-streamer, uvc-camera }:
buildRosPackage {
  pname = "ros-melodic-camera-umd";
  version = "0.2.7";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/melodic/camera_umd/0.2.7-0.tar.gz";
    name = "0.2.7-0.tar.gz";
    sha256 = "fb6705f080d0f3add72ec01a70dfb7e3efd9f264c9294a4a2ced40f9415597ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jpeg-streamer uvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UMD camera metapackage'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
