
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, opencv, roscpp, sensor-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-filters";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_filters/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "d183ef6e3c0e6b86d438bcab7676ecb72062039e7d1735e845b38683c4f4fd5e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet opencv roscpp sensor-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_filters package'';
    license = with lib.licenses; [ mit ];
  };
}
