
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, opencv, roscpp, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-filters";
  version = "2.7.5-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_filters/2.7.5-1.tar.gz";
    name = "2.7.5-1.tar.gz";
    sha256 = "42b1d29e4d36fb7736ac3ed26bd27027505a67efc3d83531c03d31627a622b21";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet opencv roscpp sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_filters package'';
    license = with lib.licenses; [ mit ];
  };
}
