
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, realsense2-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ffw-description";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_description/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "f67b284a13a9b1f560af4516803a95ac5d70f47432c7471699ddf0dd14085742";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ realsense2-description urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D models of the FFW for simulation and visualization";
    license = with lib.licenses; [ asl20 ];
  };
}
