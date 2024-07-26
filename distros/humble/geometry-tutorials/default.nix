
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-geometry-tutorials";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/humble/geometry_tutorials/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "1cc405b17abab863b54e8a9f4f8a8501ad0a3b159f174d15bb77e4f661b5d4fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
