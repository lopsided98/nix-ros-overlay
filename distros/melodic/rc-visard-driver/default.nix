
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, diagnostic-updater, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, nodelet, protobuf, rc-common-msgs, rc-dynamics-api, rc-genicam-api, roscpp, sensor-msgs, stereo-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-visard-driver";
  version = "3.2.4-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard_driver/3.2.4-1.tar.gz";
    name = "3.2.4-1.tar.gz";
    sha256 = "6a0ca88bd27602bdf4f5fff8470f91f1bcf0fa6479aca677e4c41d9faac380b4";
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
