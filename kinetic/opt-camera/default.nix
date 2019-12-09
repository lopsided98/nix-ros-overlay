
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dynamic-reconfigure, image-proc, catkin, cv-bridge, roslang, compressed-image-transport, camera-calibration-parsers, rospack }:
buildRosPackage {
  pname = "ros-kinetic-opt-camera";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/opt_camera/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "324e29b2e488ee3361c8c552959b8cebde3cededb0dffc5fa716717976d76ef9";
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
