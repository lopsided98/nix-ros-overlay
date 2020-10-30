
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, diagnostic-updater, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, nodelet, protobuf, rc-common-msgs, rc-dynamics-api, rc-genicam-api, roscpp, sensor-msgs, stereo-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-visard-driver";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_visard_driver/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "1919feb23e6e83b22072b39126996facc7aa8937b6eb66b5a50c8d084e0c3499";
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
