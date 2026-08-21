
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-pro-2dnav, tiago-pro-laser-sensors, tiago-pro-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-navigation";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_navigation-release/archive/release/humble/tiago_pro_navigation/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "6dbc9524a1a99e9ef3871861058fce1e395edaa47023a0b1831c74506b98ed90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-pro-2dnav tiago-pro-laser-sensors tiago-pro-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro Navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
