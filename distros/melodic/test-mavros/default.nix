
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, control-toolbox, eigen, eigen-conversions, geometry-msgs, mavros, mavros-extras, roscpp, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-test-mavros";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/test_mavros/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "fc382a0a6ad8eca5933e63e1c553ee1de226ad39aa2f7bfc5c41d4bf6d404943";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin cmake-modules ];
  propagatedBuildInputs = [ control-toolbox eigen eigen-conversions geometry-msgs mavros mavros-extras roscpp std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3Only lgpl3Only ];
  };
}
