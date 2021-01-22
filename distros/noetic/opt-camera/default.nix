
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, compressed-image-transport, cv-bridge, dynamic-reconfigure, image-proc, roslang, rospack, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-opt-camera";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/opt_camera/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "0c00e853c675dd096a42190c862cfae422bc3897d7b9823b46dacb18ebad9d3e";
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
