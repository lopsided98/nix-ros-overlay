
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-pro-2dnav, tiago-pro-laser-sensors, tiago-pro-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-navigation";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_navigation-release/archive/release/humble/tiago_pro_navigation/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "659e2e605a3f384eaa77c13205aae27c54e5010b1acb775a0a03664be2fde2a7";
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
