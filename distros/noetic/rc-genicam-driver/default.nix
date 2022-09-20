
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, diagnostic-updater, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, protobuf, rc-common-msgs, rc-genicam-api, roscpp, sensor-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rc-genicam-driver";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_driver_ros-release/archive/release/noetic/rc_genicam_driver/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "efffb85a04740a78ff27ce2556e5cef809371d1e5ad1624455c953bf126ea58b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ curl diagnostic-updater dynamic-reconfigure geometry-msgs image-transport message-runtime nodelet protobuf rc-common-msgs rc-genicam-api roscpp sensor-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_genicam_driver provides data from a Roboception rc_visard 3D sensor or rc_cube on several ROS topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
