
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, camera-calibration-parsers, image-transport, gtk2, cv-bridge, sensor-msgs, message-filters, catkin, rostest, message-generation, nodelet, dynamic-reconfigure, roscpp, stereo-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-view";
  version = "1.13.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_view/1.13.0-1.tar.gz;
    sha256 = "fc40f5ff8c4840e241be2c61a4cec0fa5cb904134352249cde4f5df0ff63bf62";
  };

  buildInputs = [ std-srvs rosconsole camera-calibration-parsers image-transport gtk2 sensor-msgs message-filters cv-bridge message-generation nodelet dynamic-reconfigure roscpp stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs rosconsole camera-calibration-parsers image-transport gtk2 cv-bridge message-filters nodelet dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
