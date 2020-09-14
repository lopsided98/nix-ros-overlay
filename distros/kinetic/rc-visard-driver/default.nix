
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, diagnostic-updater, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, nodelet, protobuf, rc-common-msgs, rc-dynamics-api, rc-genicam-api, roscpp, sensor-msgs, stereo-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard-driver";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard_driver/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "5ee69f95747060e14e0f138ff1a2959caf7a92cf7989175770c8a7f7662f8ff6";
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
