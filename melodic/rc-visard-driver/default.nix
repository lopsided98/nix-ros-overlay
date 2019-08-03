
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rc-common-msgs, tf, geometry-msgs, stereo-msgs, image-transport, rc-genicam-api, message-generation, message-runtime, catkin, nav-msgs, protobuf, visualization-msgs, nodelet, roscpp, sensor-msgs, diagnostic-updater, curl, dynamic-reconfigure, rc-dynamics-api }:
buildRosPackage {
  pname = "ros-melodic-rc-visard-driver";
  version = "2.7.0-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard_driver/2.7.0-1.tar.gz;
    sha256 = "6573998d90aec82fca42d993a634370012660920bf6e8f375c5a857c587be3a9";
  };

  buildInputs = [ rc-common-msgs image-transport sensor-msgs roscpp diagnostic-updater rc-genicam-api message-generation nav-msgs curl visualization-msgs dynamic-reconfigure nodelet protobuf tf rc-dynamics-api geometry-msgs stereo-msgs ];
  propagatedBuildInputs = [ rc-common-msgs image-transport sensor-msgs roscpp diagnostic-updater rc-genicam-api nav-msgs curl visualization-msgs dynamic-reconfigure nodelet message-runtime protobuf tf rc-dynamics-api geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_visard_driver provides data from a Roboception rc_visard 3D sensor on several ROS topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
