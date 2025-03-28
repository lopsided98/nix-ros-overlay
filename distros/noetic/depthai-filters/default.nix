
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, depthai-ros-msgs, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, opencv, roscpp, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-filters";
  version = "2.11.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_filters/2.11.2-1.tar.gz";
    name = "2.11.2-1.tar.gz";
    sha256 = "81a2684548d08c6d5b7e4d9888bfd8d59e1486c0e26ba1a57f0b223920bbb3ef";
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
