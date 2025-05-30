
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, control-toolbox, eigen, eigen-conversions, geometry-msgs, mavros, mavros-extras, roscpp, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-test-mavros";
  version = "1.20.1-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/test_mavros/1.20.1-1.tar.gz";
    name = "1.20.1-1.tar.gz";
    sha256 = "c464a0d19632cfeec29a8719f15cc21003254158bb55396d82ce58aa83fdf1c4";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin cmake-modules ];
  propagatedBuildInputs = [ control-toolbox eigen eigen-conversions geometry-msgs mavros mavros-extras roscpp std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Tests for MAVROS package";
    license = with lib.licenses; [ bsdOriginal gpl3Only lgpl3Only ];
  };
}
