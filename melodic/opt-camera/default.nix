
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dynamic-reconfigure, image-proc, catkin, cv-bridge, roslang, compressed-image-transport, camera-calibration-parsers, rospack }:
buildRosPackage {
  pname = "ros-melodic-opt-camera";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/opt_camera/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "f8a97bde5146b272ff34434c5123e0840c30434ecbb076050b7b0e7a5395157e";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure image-proc cv-bridge roslang compressed-image-transport camera-calibration-parsers rospack ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure image-proc cv-bridge compressed-image-transport camera-calibration-parsers rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''opt_camera'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
