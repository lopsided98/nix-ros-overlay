
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-cl-ros2-timer";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_ros2_timer/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "67fcc94d5cc18af1cb0f212ef53c09eafdecb8ab68cb8bb47e7d98bdf97e21a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The cl_ros2_timer package";
    license = with lib.licenses; [ asl20 ];
  };
}
