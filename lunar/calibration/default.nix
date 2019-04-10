
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-cb-detector, calibration-launch, monocam-settler, interval-intersection, image-cb-detector, catkin, joint-states-settler, settlerlib, calibration-estimation, calibration-msgs }:
buildRosPackage {
  pname = "ros-lunar-calibration";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/calibration/0.10.14-0.tar.gz;
    sha256 = "dd4d3689af6a930c940abe1debb9ee48d721c8ffe783f5cb1deddd45388087bb";
  };

  propagatedBuildInputs = [ laser-cb-detector calibration-launch monocam-settler interval-intersection image-cb-detector joint-states-settler settlerlib calibration-estimation calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a toolchain running through the robot calibration process. This
     involves capturing calibration data, estimating parameters, and
     then updating the URDF.'';
    #license = lib.licenses.BSD;
  };
}
