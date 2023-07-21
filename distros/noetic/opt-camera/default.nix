
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, compressed-image-transport, cv-bridge, dynamic-reconfigure, image-proc, roslang, rospack, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-opt-camera";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/opt_camera/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "e38bb0ef9947847b8ff040dc77e3b109534e7598e444813b67163d662e26c935";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslang ];
  propagatedBuildInputs = [ camera-calibration-parsers compressed-image-transport cv-bridge dynamic-reconfigure image-proc rospack sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
