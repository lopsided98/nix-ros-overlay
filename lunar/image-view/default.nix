
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, camera-calibration-parsers, image-transport, gtk2, cv-bridge, sensor-msgs, message-filters, catkin, rostest, message-generation, nodelet, dynamic-reconfigure, roscpp, stereo-msgs }:
buildRosPackage {
  pname = "ros-lunar-image-view";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_view/1.12.23-0.tar.gz;
    sha256 = "3038338ea1f736e27c721b167bd5d40055123d681fae1098980441252b50323c";
  };

  buildInputs = [ std-srvs rosconsole camera-calibration-parsers image-transport gtk2 sensor-msgs message-filters cv-bridge message-generation nodelet dynamic-reconfigure roscpp stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs rosconsole camera-calibration-parsers image-transport gtk2 cv-bridge message-filters nodelet dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.'';
    #license = lib.licenses.BSD;
  };
}
