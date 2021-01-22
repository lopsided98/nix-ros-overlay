
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-estimation, calibration-launch, calibration-msgs, catkin, image-cb-detector, interval-intersection, joint-states-settler, laser-cb-detector, monocam-settler, settlerlib }:
buildRosPackage {
  pname = "ros-kinetic-calibration";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "c4ae4faade4daaa2c3dae28fea9c2c807547221830fd8d023122dd484fa5df31";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ calibration-estimation calibration-launch calibration-msgs image-cb-detector interval-intersection joint-states-settler laser-cb-detector monocam-settler settlerlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a toolchain running through the robot calibration process. This
     involves capturing calibration data, estimating parameters, and
     then updating the URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
