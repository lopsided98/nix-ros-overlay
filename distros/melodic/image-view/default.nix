
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, cv-bridge, dynamic-reconfigure, gtk2, image-transport, message-filters, message-generation, nodelet, rosconsole, roscpp, rostest, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-view";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_view/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "4642943d875d6450ed805d977595e993d7d6bf83fe487b018e1e1300e2edfa7a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation sensor-msgs stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers cv-bridge dynamic-reconfigure gtk2 image-transport message-filters nodelet rosconsole roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
