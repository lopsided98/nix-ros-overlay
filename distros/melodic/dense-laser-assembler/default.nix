
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-msgs, catkin, roscpp, roscpp-serialization, sensor-msgs, settlerlib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dense-laser-assembler";
  version = "1.0.11-r3";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/dense_laser_assembler/1.0.11-3.tar.gz";
    name = "1.0.11-3.tar.gz";
    sha256 = "ae8c468360cf2e64738f25ca2722920008eff02f43806e5b4ac0009639ebe5ec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ calibration-msgs roscpp roscpp-serialization sensor-msgs settlerlib std-msgs ];
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
