
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kuka-kl-support";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_kl_support/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "f3664ddbb396498619bb6a7e87928bea957ffd3a94dfba7509a95c5657dedd41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot model for the KUKA KL family";
    license = with lib.licenses; [ asl20 ];
  };
}
