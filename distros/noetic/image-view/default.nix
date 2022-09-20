
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, cv-bridge, dynamic-reconfigure, image-transport, message-filters, message-generation, nodelet, rosconsole, roscpp, rostest, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-view";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/image_view/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "7bfe9fd5e1007a49a8307ebc8afa9cfcf4314159ab1fa1af3a43ac9ff8a9a521";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation sensor-msgs stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers cv-bridge dynamic-reconfigure image-transport message-filters nodelet rosconsole roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
