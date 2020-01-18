
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-transport, nodelet, nodelet-topic-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-proc";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_proc/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "8719ff0e5343cd91a069b4f258ceae8efc2e5b46d88b42eb201a32795306a3d3";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  checkInputs = [ camera-calibration-parsers rostest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-geometry image-transport nodelet nodelet-topic-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Single image rectification and color processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
