
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kuka-kl-support";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_kl_support/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "4e2229bac86e1ff34531c815ae659871a47734a84eba693bc2de73f9d1676987";
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
