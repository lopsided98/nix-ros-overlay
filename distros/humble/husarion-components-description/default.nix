
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, depthai-descriptions, kortex-description, python3Packages, realsense2-description, robotiq-description, ur-description, urdf, xacro, zed-msgs }:
buildRosPackage {
  pname = "ros-humble-husarion-components-description";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_components_description-release/archive/release/humble/husarion_components_description/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "e2d48fd7db96a7be9950c7dfcaa14837f60987db8c53e9c5efd200aa532a295c";
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
