
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros, geometry-msgs, control-toolbox, eigen-conversions, std-msgs, cmake-modules, catkin, eigen, roscpp, angles, mavros-extras, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-test-mavros";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/test_mavros/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "d195fd0cda8ecfb69734707ab78fe2352590e3eb090c5c4b0e752c484a5a4349";
  };

  buildType = "catkin";
  buildInputs = [ mavros geometry-msgs control-toolbox eigen-conversions std-msgs cmake-modules eigen roscpp angles mavros-extras tf2-ros ];
  propagatedBuildInputs = [ mavros geometry-msgs control-toolbox eigen-conversions std-msgs eigen roscpp mavros-extras tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3 lgpl2 ];
  };
}
