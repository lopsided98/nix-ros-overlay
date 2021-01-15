
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, image-transport, message-generation, message-runtime, nodelet, rc-genicam-api, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rc-genicam-camera";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_camera-release/archive/release/melodic/rc_genicam_camera/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "dd7cfece1fb4253769f828d30b890bf2662dcb7a07a2af89a7e7c9fad1e8ba6b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure image-transport message-runtime nodelet rc-genicam-api roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_genicam_camera provides images from a GenICam compatible camera.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
