
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, launch, launch-ros, osrf-pycommon, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-nav2-common";
  version = "1.3.14-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_common/1.3.14-1.tar.gz";
    name = "1.3.14-1.tar.gz";
    sha256 = "4ab0f28a499a9f256e8f68cdd99f0e060f3521f9a82f799f1a43dd18469812da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-core launch launch-ros osrf-pycommon python3Packages.pyyaml rclpy ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "Common support functionality used throughout the navigation 2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
