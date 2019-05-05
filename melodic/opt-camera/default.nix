
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, camera-calibration-parsers, sensor-msgs, cv-bridge, catkin, roslang, dynamic-reconfigure, image-proc, compressed-image-transport }:
buildRosPackage {
  pname = "ros-melodic-opt-camera";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/opt_camera/2.1.11-0.tar.gz;
    sha256 = "57af7e6334d1a87c5da35fc6984d7e35906cbb53c0a9d57d8deb7843aafc9505";
  };

  buildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge roslang dynamic-reconfigure image-proc compressed-image-transport ];
  propagatedBuildInputs = [ rospack camera-calibration-parsers sensor-msgs cv-bridge dynamic-reconfigure image-proc compressed-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
