
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, diagnostic-msgs, diagnostic-updater, driver-base, dynamic-reconfigure, image-transport, polled-camera, prosilica-gige-sdk, rosconsole, roscpp, self-test, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-prosilica-camera";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/melodic/prosilica_camera/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "7c2aafe58194390d9dbaaf25cf54cf5ba4060742e2ef9f10a0bb207c377d8202";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosconsole ];
  propagatedBuildInputs = [ camera-calibration-parsers diagnostic-msgs diagnostic-updater driver-base dynamic-reconfigure image-transport polled-camera prosilica-gige-sdk roscpp self-test sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver node for AVT/Prosilica Gigabit Ethernet (GigE) cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
