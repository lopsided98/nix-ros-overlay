
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-extras, cmake-modules, control-toolbox, mavros, catkin, tf2-ros, angles, std-msgs, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-test-mavros";
  version = "0.32.0-r1";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/kinetic/test_mavros/0.32.0-1.tar.gz;
    sha256 = "46c14f86538eb6923b1346f6717ee527a569a43d9ffdbc8e7d191639ee8db658";
  };

  buildInputs = [ mavros-extras cmake-modules control-toolbox mavros tf2-ros eigen std-msgs angles eigen-conversions roscpp geometry-msgs ];
  propagatedBuildInputs = [ mavros-extras control-toolbox mavros tf2-ros eigen std-msgs eigen-conversions roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3 lgpl2 ];
  };
}
