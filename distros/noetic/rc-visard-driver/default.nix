
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, diagnostic-updater, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, nodelet, protobuf, rc-common-msgs, rc-dynamics-api, rc-genicam-api, roscpp, sensor-msgs, stereo-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-visard-driver";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_visard_driver/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "5d55fa6111d000eae9805a069ad34f284b762fc4c503afaab3b9b49e52b6d8ed";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ curl diagnostic-updater dynamic-reconfigure geometry-msgs image-transport message-runtime nav-msgs nodelet protobuf rc-common-msgs rc-dynamics-api rc-genicam-api roscpp sensor-msgs stereo-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_visard_driver provides data from a Roboception rc_visard 3D sensor on several ROS topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
