
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, camera-calibration-parsers, image-transport, gtk2, cv-bridge, sensor-msgs, message-filters, catkin, rostest, message-generation, nodelet, dynamic-reconfigure, roscpp, stereo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-image-view";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_view/1.12.23-0.tar.gz;
    sha256 = "71403d5fcb6ce1d2f777cc9b095e26473a81f548ef8761dd9510fa9270a96511";
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
