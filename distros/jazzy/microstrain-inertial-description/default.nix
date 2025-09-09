
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-jazzy-microstrain-inertial-description";
  version = "4.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/jazzy/microstrain_inertial_description/4.7.0-1.tar.gz";
    name = "4.7.0-1.tar.gz";
    sha256 = "cc8bdd557af6952b2b5ee8f7cd5a03bf5aaa14ab40249d2f7faaff4d46e0cc45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and stl files for MicroStrain sensors.";
    license = with lib.licenses; [ mit ];
  };
}
