
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, depthai-ros-msgs, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, opencv, roscpp, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-filters";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_filters/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "deb0e6315bba29dd5c2a981f0e32e3ba58a2838a64e8e76ae643c9651c359817";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge depthai-ros-msgs dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet opencv roscpp sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_filters package'';
    license = with lib.licenses; [ mit ];
  };
}
