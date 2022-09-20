
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dense-laser-assembler, pr2-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-dense-laser-snapshotter";
  version = "1.0.11-r3";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/pr2_dense_laser_snapshotter/1.0.11-3.tar.gz";
    name = "1.0.11-3.tar.gz";
    sha256 = "a40e1a007d63427cfc72b218f652aaef205545937a028252b4672b45b971bfd0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dense-laser-assembler pr2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stores the data from a series of laser scan messages in a dense representation, allowing
     users to easily perform image-like operations on intensity or range data. This package is
     experimental. Expect APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
