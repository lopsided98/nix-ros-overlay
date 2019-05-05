
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-extras, cmake-modules, control-toolbox, mavros, catkin, tf2-ros, angles, std-msgs, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-lunar-test-mavros";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/lunar/test_mavros/0.29.2-0.tar.gz;
    sha256 = "e5e83b5d6c87c0a8f442daa7e38bb1ea3b076ff69791ade6eec1a95108ffdb84";
  };

  buildInputs = [ mavros-extras cmake-modules control-toolbox mavros tf2-ros eigen std-msgs angles eigen-conversions roscpp geometry-msgs ];
  propagatedBuildInputs = [ mavros-extras control-toolbox mavros tf2-ros eigen std-msgs eigen-conversions roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3 lgpl2 ];
  };
}
