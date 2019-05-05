
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-cb-detector, calibration-launch, monocam-settler, interval-intersection, image-cb-detector, catkin, joint-states-settler, settlerlib, calibration-estimation, calibration-msgs }:
buildRosPackage {
  pname = "ros-melodic-calibration";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/melodic/calibration/0.10.14-0.tar.gz;
    sha256 = "7a248b88469868131a91a2f1894aef35a0012d9027cdf3532e39849f560268d6";
  };

  propagatedBuildInputs = [ laser-cb-detector calibration-launch monocam-settler interval-intersection image-cb-detector joint-states-settler settlerlib calibration-estimation calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a toolchain running through the robot calibration process. This
     involves capturing calibration data, estimating parameters, and
     then updating the URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
