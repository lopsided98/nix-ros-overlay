
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, depthai-descriptions, python3Packages, realsense2-description, robotiq-description, ur-description, urdf, xacro, zed-description }:
buildRosPackage {
  pname = "ros-jazzy-husarion-components-description";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_components_description-release/archive/release/jazzy/husarion_components_description/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "566a6855adabc1bf14bd25b5fce2d304e604ad5365030d57e53676a612f8ac88";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-index-python python3Packages.pyyaml ];
  propagatedBuildInputs = [ depthai-descriptions realsense2-description robotiq-description ur-description urdf xacro zed-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF descriptions of components offered with Husarion robots";
    license = with lib.licenses; [ asl20 ];
  };
}
