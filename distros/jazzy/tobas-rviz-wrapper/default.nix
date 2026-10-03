
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rviz-wrapper";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rviz_wrapper/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "9824767f82feb260b8d2ba2d20c7bb43a6abf49184c7d32b5ce07a2022e0da9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Reusable Qt wrapper for embedding and configuring RViz in Tobas applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
