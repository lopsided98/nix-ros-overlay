
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, control-toolbox, eigen, eigen-conversions, geometry-msgs, mavros, mavros-extras, roscpp, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-test-mavros";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/test_mavros/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "9d5727aacf6cda1224aaec140f67601893a1eb6097ff6a48d3817aed4b1a7f7f";
  };

  buildType = "catkin";
  buildInputs = [ angles cmake-modules ];
  propagatedBuildInputs = [ control-toolbox eigen eigen-conversions geometry-msgs mavros mavros-extras roscpp std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3 lgpl2 ];
  };
}
