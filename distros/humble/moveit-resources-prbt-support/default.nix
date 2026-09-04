
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-prbt-support";
  version = "2.5.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_resources_prbt_support/2.5.10-1.tar.gz";
    name = "2.5.10-1.tar.gz";
    sha256 = "58682e2c254aca5a59c3039e39cbd8a6b15236ab8443e40f150a42a1439da9b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.";
    license = with lib.licenses; [ asl20 ];
  };
}
