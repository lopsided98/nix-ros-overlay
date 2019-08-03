
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, camera-calibration-parsers, sensor-msgs, cv-bridge, catkin, roslang, dynamic-reconfigure, image-proc, compressed-image-transport }:
buildRosPackage {
  pname = "ros-kinetic-opt-camera";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/opt_camera/2.1.13-1.tar.gz;
    sha256 = "79ba0719bf8dffa7f7d25ed50f8a5355867b6690d080cd6e96a132e33caefcb7";
  };

  buildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge roslang dynamic-reconfigure image-proc compressed-image-transport ];
  propagatedBuildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge dynamic-reconfigure image-proc compressed-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
