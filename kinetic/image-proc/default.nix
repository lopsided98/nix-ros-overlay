
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, nodelet-topic-tools, dynamic-reconfigure, catkin, image-transport, cv-bridge, nodelet, roscpp, camera-calibration-parsers, rostest, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_proc/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "9c74897935e80a200d6a3a28ee055889f69eca787c2be11095003f75b73b2aa2";
  };

  buildType = "catkin";
  buildInputs = [ boost nodelet-topic-tools sensor-msgs dynamic-reconfigure image-transport cv-bridge nodelet roscpp image-geometry ];
  checkInputs = [ camera-calibration-parsers rostest ];
  propagatedBuildInputs = [ sensor-msgs nodelet-topic-tools dynamic-reconfigure image-transport cv-bridge nodelet roscpp image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Single image rectification and color processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
