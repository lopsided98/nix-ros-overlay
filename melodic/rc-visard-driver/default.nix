
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, geometry-msgs, stereo-msgs, image-transport, rc-genicam-api, message-generation, message-runtime, std-srvs, catkin, nav-msgs, protobuf, visualization-msgs, nodelet, roscpp, sensor-msgs, diagnostic-updater, curl, dynamic-reconfigure, rc-dynamics-api }:
buildRosPackage {
  pname = "ros-melodic-rc-visard-driver";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard_driver/2.5.0-0.tar.gz;
    sha256 = "c22eca62d0d777efcc0589eb80b8f1a5a6b4ee31964696c6e4cd22b5d67d77d9";
  };

  buildInputs = [ std-srvs image-transport sensor-msgs roscpp diagnostic-updater rc-genicam-api message-generation nav-msgs curl visualization-msgs dynamic-reconfigure nodelet protobuf tf rc-dynamics-api geometry-msgs stereo-msgs ];
  propagatedBuildInputs = [ std-srvs image-transport sensor-msgs roscpp diagnostic-updater rc-genicam-api nav-msgs curl visualization-msgs dynamic-reconfigure nodelet message-runtime protobuf tf rc-dynamics-api geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_visard_driver provides data from a Roboception rc_visard 3D sensor on several ROS topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
