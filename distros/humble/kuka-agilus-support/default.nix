
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-agilus-support";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_agilus_support/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5064ada631461c824ab2c64cb8dc40077c9ef9eb977fb769276089bb31c807a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake rviz2 ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-resources launch-ros robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot models for the KUKA agilus family.";
    license = with lib.licenses; [ asl20 ];
  };
}
