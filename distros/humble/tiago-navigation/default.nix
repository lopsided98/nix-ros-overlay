
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-2dnav, tiago-laser-sensors, tiago-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-navigation";
  version = "4.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_navigation-release/archive/release/humble/tiago_navigation/4.13.0-1.tar.gz";
    name = "4.13.0-1.tar.gz";
    sha256 = "d3015af8c1931b87ce4c634d19be41aac17a689ed26e0f49f9ce3f8182a20e70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-2dnav tiago-laser-sensors tiago-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
