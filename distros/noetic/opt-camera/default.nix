
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, compressed-image-transport, cv-bridge, dynamic-reconfigure, image-proc, roslang, rospack, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-opt-camera";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/opt_camera/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "0607b00ac74f6f055becd1fdf46ce5c6bdbab425474425be651cb51fc194614f";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslang ];
  propagatedBuildInputs = [ camera-calibration-parsers compressed-image-transport cv-bridge dynamic-reconfigure image-proc rospack sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "opt_camera";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
