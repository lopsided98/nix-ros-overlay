
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, camera-calibration-parsers, catkin, polled-camera }:
buildRosPackage {
  pname = "ros-lunar-image-common";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_common-release/archive/release/lunar/image_common/1.11.13-0.tar.gz;
    sha256 = "fb856178afb0fd3e3a3b83873b9761dde7b6d2c324d972c75bd587a661174abe";
  };

  propagatedBuildInputs = [ camera-calibration-parsers image-transport camera-info-manager polled-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with images in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
