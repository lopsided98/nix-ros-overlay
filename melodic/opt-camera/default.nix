
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, camera-calibration-parsers, sensor-msgs, cv-bridge, catkin, roslang, dynamic-reconfigure, image-proc, compressed-image-transport }:
buildRosPackage {
  pname = "ros-melodic-opt-camera";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/opt_camera/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "f8a97bde5146b272ff34434c5123e0840c30434ecbb076050b7b0e7a5395157e";
  };

  buildType = "catkin";
  buildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge roslang dynamic-reconfigure image-proc compressed-image-transport ];
  propagatedBuildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge dynamic-reconfigure image-proc compressed-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
