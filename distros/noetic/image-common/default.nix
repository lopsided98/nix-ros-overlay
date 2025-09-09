
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, image-transport, polled-camera }:
buildRosPackage {
  pname = "ros-noetic-image-common";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/noetic/image_common/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "7158d40215f9252a9523f62b41ae687a5e94ed4c732f245c64e7bbe9e855dff3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager image-transport polled-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Common code for working with images in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
