
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, realsense2-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ffw-description";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_description/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "4d48aa42b7796983e3a17c9f161505520a03f92ad2d6a4ef857fdf301818bfe6";
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
