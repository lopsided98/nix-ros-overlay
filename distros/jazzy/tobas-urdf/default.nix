
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, tobas-ros2-tools, tobas-string-tools, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "799e74ff0a09b3ed1cdcc3602fa1430488e59d987cb7244a77cbc617d394f893";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp tobas-ros2-tools tobas-string-tools urdf urdfdom ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF parsing, export, and model utility library for Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
