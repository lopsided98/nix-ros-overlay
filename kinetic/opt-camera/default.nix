
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, compressed-image-transport, cv-bridge, dynamic-reconfigure, image-proc, roslang, rospack, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-opt-camera";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/opt_camera/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "72e0a4898deedde17cdea3f62645debd9601b517c19ac10cbfc8074f4c063499";
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
