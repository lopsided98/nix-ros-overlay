
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros, geometry-msgs, control-toolbox, eigen-conversions, std-msgs, cmake-modules, catkin, eigen, roscpp, angles, mavros-extras, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-test-mavros";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/test_mavros/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "9e20ed9fb79f6e02c5dc08648f7b68bb5a18e6ef59000ddc0803ca211c5d4b1b";
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
