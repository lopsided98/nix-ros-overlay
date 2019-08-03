
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rc-common-msgs, tf, geometry-msgs, stereo-msgs, image-transport, rc-genicam-api, message-generation, message-runtime, catkin, nav-msgs, protobuf, visualization-msgs, nodelet, roscpp, sensor-msgs, diagnostic-updater, curl, dynamic-reconfigure, rc-dynamics-api }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard-driver";
  version = "2.7.0-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard_driver/2.7.0-1.tar.gz;
    sha256 = "e3aac13f1e408cec679a5561a6ffc51697c3bff4f12e8d67bb38596e2e767260";
  };

  buildInputs = [ rc-common-msgs image-transport sensor-msgs roscpp diagnostic-updater rc-genicam-api message-generation nav-msgs curl visualization-msgs dynamic-reconfigure nodelet protobuf tf rc-dynamics-api geometry-msgs stereo-msgs ];
  propagatedBuildInputs = [ rc-common-msgs image-transport sensor-msgs roscpp diagnostic-updater rc-genicam-api nav-msgs curl visualization-msgs dynamic-reconfigure nodelet message-runtime protobuf tf rc-dynamics-api geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_visard_driver provides data from a Roboception rc_visard 3D sensor on several ROS topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
