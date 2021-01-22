
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-color-util";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/color_util/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "14c50a320ab070aade0ef067844a741d1ee3623469a187726c10b264e8761ac7";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An almost dependency-less library for converting between color spaces'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
