
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, image-transport, polled-camera, camera-calibration-parsers }:
buildRosPackage {
  pname = "ros-melodic-image-common";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/melodic/image_common/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "987bdb08a0bf935d3c657331b79564a3e272f6c4538e5be5d893ab6a13865ede";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-transport camera-info-manager camera-calibration-parsers polled-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common code for working with images in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
