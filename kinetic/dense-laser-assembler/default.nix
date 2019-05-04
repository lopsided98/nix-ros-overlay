
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, settlerlib, roscpp-serialization, std-msgs, roscpp, calibration-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dense-laser-assembler";
  version = "1.0.11";

  src = fetchurl {
    url = https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/dense_laser_assembler/1.0.11-0.tar.gz;
    sha256 = "ad15290fa35aaef1125beb105db5f63ed42100625eb51d2c2c80b4af717dc2b0";
  };

  buildInputs = [ sensor-msgs settlerlib roscpp-serialization std-msgs roscpp calibration-msgs ];
  propagatedBuildInputs = [ sensor-msgs settlerlib roscpp-serialization std-msgs roscpp calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stores streaming data from a laser sensor in a
    dense representation. This allows the user to do 'image-like'
    processing on the data, and can also be used for very fast approx
    neighborhood searches.  This package is still experimental and unstable.
    Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
