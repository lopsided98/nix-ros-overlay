
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, control-toolbox, eigen, eigen-conversions, geometry-msgs, mavros, mavros-extras, roscpp, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-test-mavros";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/test_mavros/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "709f79de9b3ddd2396feb569d3bea1132111e38207c3caad5852d463fc0dc6cf";
  };

  buildType = "catkin";
  buildInputs = [ angles cmake-modules ];
  propagatedBuildInputs = [ control-toolbox eigen eigen-conversions geometry-msgs mavros mavros-extras roscpp std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3Only lgpl3Only ];
  };
}
