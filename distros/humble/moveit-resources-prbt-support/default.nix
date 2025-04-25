
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-prbt-support";
  version = "2.5.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_resources_prbt_support/2.5.9-1.tar.gz";
    name = "2.5.9-1.tar.gz";
    sha256 = "5022fa9537162f8d35c0c70d55119c9aa7cb8646ec8f40ce602653fa7687fad2";
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
