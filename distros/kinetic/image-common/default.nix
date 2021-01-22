
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, image-transport, polled-camera }:
buildRosPackage {
  pname = "ros-kinetic-image-common";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/kinetic/image_common/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "2d847bf4cd08c9c1ba3f7ec9708b6a50735668a321a47e0d0a26c02157e0896d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager image-transport polled-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with images in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
