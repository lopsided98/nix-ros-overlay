
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, prosilica-gige-sdk, diagnostic-msgs, dynamic-reconfigure, std-msgs, catkin, image-transport, self-test, driver-base, roscpp, polled-camera, camera-calibration-parsers, rosconsole, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-prosilica-camera";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/melodic/prosilica_camera/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "7c2aafe58194390d9dbaaf25cf54cf5ba4060742e2ef9f10a0bb207c377d8202";
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
