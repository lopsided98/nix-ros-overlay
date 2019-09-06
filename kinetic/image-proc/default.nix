
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, image-transport, sensor-msgs, cv-bridge, nodelet-topic-tools, catkin, image-geometry, rostest, nodelet, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_proc/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "9c74897935e80a200d6a3a28ee055889f69eca787c2be11095003f75b73b2aa2";
  };

  buildType = "catkin";
  buildInputs = [ boost image-transport sensor-msgs nodelet-topic-tools cv-bridge image-geometry nodelet dynamic-reconfigure roscpp ];
  checkInputs = [ camera-calibration-parsers rostest ];
  propagatedBuildInputs = [ image-transport sensor-msgs nodelet-topic-tools cv-bridge image-geometry nodelet dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Single image rectification and color processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
