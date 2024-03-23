
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, depthai-ros-msgs, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, opencv, roscpp, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-filters";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_filters/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "fde0096d702a6a44fb743304ba8b951f74fc5cfef22f57c201e3348aa667aada";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge depthai-ros-msgs dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet opencv opencv.cxxdev roscpp sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The depthai_filters package";
    license = with lib.licenses; [ mit ];
  };
}
