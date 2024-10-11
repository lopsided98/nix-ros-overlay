
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, control-toolbox, eigen, eigen-conversions, geometry-msgs, mavros, mavros-extras, roscpp, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-test-mavros";
  version = "1.20.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/test_mavros/1.20.0-1.tar.gz";
    name = "1.20.0-1.tar.gz";
    sha256 = "f68e519010cc505cdd7e0ebd9e51e4e4548903394eb784679f9a585a499ffeac";
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
