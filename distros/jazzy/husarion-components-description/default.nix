
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, depthai-descriptions, python3Packages, realsense2-description, robotiq-description, ur-description, urdf, xacro, zed-msgs }:
buildRosPackage {
  pname = "ros-jazzy-husarion-components-description";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_components_description-release/archive/release/jazzy/husarion_components_description/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "6ddbd49cec9d55a6013365f936edc78c8c888100792393e90abdd2e47aa1ac33";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-index-python python3Packages.pyyaml ];
  propagatedBuildInputs = [ depthai-descriptions realsense2-description robotiq-description ur-description urdf xacro zed-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF descriptions of components offered with Husarion robots";
    license = with lib.licenses; [ asl20 ];
  };
}
