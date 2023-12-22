
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, depthai-ros-msgs, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, opencv, roscpp, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-filters";
  version = "2.8.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_filters/2.8.2-1.tar.gz";
    name = "2.8.2-1.tar.gz";
    sha256 = "f388f423bb05b76c69dc08ca736f09a827bf1dd5403be2a4942ef5a8c33fda28";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge depthai-ros-msgs dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet opencv opencv.cxxdev roscpp sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_filters package'';
    license = with lib.licenses; [ mit ];
  };
}
