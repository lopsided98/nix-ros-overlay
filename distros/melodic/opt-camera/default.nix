
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, compressed-image-transport, cv-bridge, dynamic-reconfigure, image-proc, roslang, rospack, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-opt-camera";
  version = "2.1.21-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/opt_camera/2.1.21-3.tar.gz";
    name = "2.1.21-3.tar.gz";
    sha256 = "5286726c5c8d2d19d493ae1c357614680cdb4cd3877db19076dfe2d6cf44ce58";
  };

  buildType = "catkin";
  buildInputs = [ roslang ];
  propagatedBuildInputs = [ camera-calibration-parsers compressed-image-transport cv-bridge dynamic-reconfigure image-proc rospack sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
