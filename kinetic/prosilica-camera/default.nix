
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, prosilica-gige-sdk, diagnostic-msgs, dynamic-reconfigure, std-msgs, catkin, image-transport, self-test, driver-base, roscpp, polled-camera, camera-calibration-parsers, rosconsole, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-prosilica-camera";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/kinetic/prosilica_camera/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "d10b65251619a898f1bdc38fb8e9a95eab87d2c70eba4f0fe1047e8b19a43b72";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs prosilica-gige-sdk diagnostic-msgs dynamic-reconfigure std-msgs image-transport self-test driver-base roscpp polled-camera camera-calibration-parsers rosconsole diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs prosilica-gige-sdk diagnostic-msgs dynamic-reconfigure std-msgs image-transport self-test driver-base roscpp polled-camera camera-calibration-parsers diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver node for AVT/Prosilica Gigabit Ethernet (GigE) cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
