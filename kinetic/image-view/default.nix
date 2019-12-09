
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, rostest, dynamic-reconfigure, std-srvs, catkin, image-transport, stereo-msgs, cv-bridge, gtk2, nodelet, roscpp, message-generation, camera-calibration-parsers, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-image-view";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_view/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "71403d5fcb6ce1d2f777cc9b095e26473a81f548ef8761dd9510fa9270a96511";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters dynamic-reconfigure std-srvs image-transport stereo-msgs cv-bridge gtk2 nodelet roscpp message-generation camera-calibration-parsers rosconsole ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-filters dynamic-reconfigure std-srvs image-transport cv-bridge gtk2 nodelet roscpp camera-calibration-parsers rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
