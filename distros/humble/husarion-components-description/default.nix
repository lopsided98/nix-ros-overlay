
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, depthai-descriptions, kortex-description, python3Packages, realsense2-description, robotiq-description, ur-description, urdf, xacro, zed-msgs }:
buildRosPackage {
  pname = "ros-humble-husarion-components-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_components_description-release/archive/release/humble/husarion_components_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "47cf389b3726f288923680178d5602743199d7515c0f4aaf7e8d08de8807e92f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-index-python python3Packages.pyyaml ];
  propagatedBuildInputs = [ depthai-descriptions kortex-description realsense2-description robotiq-description ur-description urdf xacro zed-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF descriptions of components offered with Husarion robots";
    license = with lib.licenses; [ asl20 ];
  };
}
