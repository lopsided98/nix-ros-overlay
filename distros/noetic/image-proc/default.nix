
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-transport, nodelet, nodelet-topic-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-proc";
  version = "1.15.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/image_proc/1.15.3-1.tar.gz";
    name = "1.15.3-1.tar.gz";
    sha256 = "712ef2d9d3602daa643c50e2ca841ae5125995651065726eaf9439fcf24a93db";
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
