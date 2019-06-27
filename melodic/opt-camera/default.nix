
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, camera-calibration-parsers, sensor-msgs, cv-bridge, catkin, roslang, dynamic-reconfigure, image-proc, compressed-image-transport }:
buildRosPackage {
  pname = "ros-melodic-opt-camera";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/opt_camera/2.1.12-2.tar.gz;
    sha256 = "9735161bfb4b2b7cf82d749d0540f5624ab0034286edc102773dad42138e493f";
  };

  buildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge roslang dynamic-reconfigure image-proc compressed-image-transport ];
  propagatedBuildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge dynamic-reconfigure image-proc compressed-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
