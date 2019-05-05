
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, camera-calibration-parsers, sensor-msgs, cv-bridge, catkin, roslang, dynamic-reconfigure, image-proc, compressed-image-transport }:
buildRosPackage {
  pname = "ros-lunar-opt-camera";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/opt_camera/2.1.11-2.tar.gz;
    sha256 = "f0d21ce32f8c305f483dd6f9f333d2183ec85fe63cbf5720594d2057ddf08f03";
  };

  buildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge roslang dynamic-reconfigure image-proc compressed-image-transport ];
  propagatedBuildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge dynamic-reconfigure image-proc compressed-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
