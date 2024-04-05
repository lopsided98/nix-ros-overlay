
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-iron-microstrain-inertial-description";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/iron/microstrain_inertial_description/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "aa4d1ad69cce3991d46410d01f420dcf3bfe396bc7ede581d206248141e4e86b";
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
