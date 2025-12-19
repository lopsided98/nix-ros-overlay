
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, depthai-descriptions, python3Packages, realsense2-description, robotiq-description, ur-description, urdf, xacro, zed-msgs }:
buildRosPackage {
  pname = "ros-jazzy-husarion-components-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_components_description-release/archive/release/jazzy/husarion_components_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "22293ae7f7ea340bb2f6a3c2079a41932992ee5d761e8c7736ac2f3e6adbb47e";
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
