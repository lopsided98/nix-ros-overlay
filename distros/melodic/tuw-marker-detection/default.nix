
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tuw-aruco, tuw-checkerboard, tuw-ellipses, tuw-marker-pose-estimation }:
buildRosPackage {
  pname = "ros-melodic-tuw-marker-detection";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/melodic/tuw_marker_detection/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4b831ec3d6f8678dad02b5e96201e7944af7210da72b19a90d72d48ed4628ec9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ tuw-aruco tuw-checkerboard tuw-ellipses tuw-marker-pose-estimation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_marker_detection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
