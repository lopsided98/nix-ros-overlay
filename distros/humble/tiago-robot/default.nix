
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-bringup, tiago-controller-configuration, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-robot";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_robot-release/archive/release/humble/tiago_robot/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "af5dd39abf735ea4dcc2dffe783d63f0e6c96650823f7e01a82cdf8a7788ce4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-bringup tiago-controller-configuration tiago-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description and controller configuration of TIAGo";
    license = with lib.licenses; [ asl20 ];
  };
}
