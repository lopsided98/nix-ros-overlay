
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, depthai-ros-msgs, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, opencv, roscpp, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-filters";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_filters/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "50573899a52fadb44450138c7696b25882873639c182c9843f54fa25d126ab38";
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
