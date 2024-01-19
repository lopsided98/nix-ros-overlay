
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, image-transport, nodelet, nodelet-topic-tools, polled-camera, prosilica-gige-sdk, rosconsole, roscpp, self-test, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-prosilica-camera";
  version = "1.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/noetic/prosilica_camera/1.9.5-1.tar.gz";
    name = "1.9.5-1.tar.gz";
    sha256 = "f3372987e611a382ec12012e2f422cff4580236ad576aedc2515806f6a9f749e";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosconsole ];
  propagatedBuildInputs = [ camera-calibration-parsers diagnostic-msgs diagnostic-updater dynamic-reconfigure image-transport nodelet nodelet-topic-tools polled-camera prosilica-gige-sdk roscpp self-test sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver node for AVT/Prosilica Gigabit Ethernet (GigE) cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
