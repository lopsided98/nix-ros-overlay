
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, rostest, dynamic-reconfigure, std-srvs, catkin, image-transport, stereo-msgs, cv-bridge, gtk2, nodelet, roscpp, message-generation, camera-calibration-parsers, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-image-view";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_view/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "fc40f5ff8c4840e241be2c61a4cec0fa5cb904134352249cde4f5df0ff63bf62";
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
