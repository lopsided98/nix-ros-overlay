
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-extras, cmake-modules, control-toolbox, mavros, catkin, tf2-ros, angles, std-msgs, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-test-mavros";
  version = "0.32.1-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/test_mavros/0.32.1-1.tar.gz";
    name = "0.32.1-1.tar.gz";
    sha256 = "6a9c794b01c2dd3e20db9f21e76b36bc31ff056a233359ce40c79a5ea778b911";
  };

  buildType = "catkin";
  buildInputs = [ mavros-extras cmake-modules control-toolbox mavros tf2-ros eigen std-msgs angles eigen-conversions roscpp geometry-msgs ];
  propagatedBuildInputs = [ mavros-extras control-toolbox mavros tf2-ros eigen std-msgs eigen-conversions roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3 lgpl2 ];
  };
}
