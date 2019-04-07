
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, camera-calibration-parsers, sensor-msgs, cv-bridge, catkin, roslang, dynamic-reconfigure, image-proc, compressed-image-transport }:
buildRosPackage {
  pname = "ros-kinetic-opt-camera";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/opt_camera/2.1.11-0.tar.gz;
    sha256 = "50d070d49fe87eaa3cc70284c62f380febb5ba4a3d5df9f18d701650f8bbb7b6";
  };

  buildInputs = [ rospack roslang dynamic-reconfigure camera-calibration-parsers image-proc cv-bridge compressed-image-transport sensor-msgs ];
  propagatedBuildInputs = [ rospack dynamic-reconfigure camera-calibration-parsers image-proc cv-bridge compressed-image-transport sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    #license = lib.licenses.BSD;
  };
}
