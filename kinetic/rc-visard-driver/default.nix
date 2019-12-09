
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, image-transport, nodelet, nav-msgs, curl, sensor-msgs, protobuf, rc-genicam-api, dynamic-reconfigure, catkin, roscpp, message-generation, rc-common-msgs, stereo-msgs, visualization-msgs, diagnostic-updater, message-runtime, rc-dynamics-api }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard-driver";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard_driver/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "e3aac13f1e408cec679a5561a6ffc51697c3bff4f12e8d67bb38596e2e767260";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs protobuf geometry-msgs rc-genicam-api dynamic-reconfigure tf curl roscpp rc-common-msgs image-transport stereo-msgs visualization-msgs nodelet message-generation nav-msgs rc-dynamics-api diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs protobuf geometry-msgs rc-genicam-api dynamic-reconfigure nav-msgs tf rc-common-msgs image-transport stereo-msgs nodelet roscpp visualization-msgs message-runtime curl rc-dynamics-api diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_visard_driver provides data from a Roboception rc_visard 3D sensor on several ROS topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
