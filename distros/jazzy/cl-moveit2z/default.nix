
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, moveit-ros-planning-interface, smacc2, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-cl-moveit2z";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_moveit2z/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "5a932e90a5df8009b73a9755620d86a5e65878d1b34015cb1313320f6dd43e2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp moveit-ros-planning-interface smacc2 tf2 tf2-geometry-msgs tf2-ros yaml-cpp yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The cl_moveit2z package";
    license = with lib.licenses; [ asl20 ];
  };
}
