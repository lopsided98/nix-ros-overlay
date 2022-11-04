
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, jackal-control, jackal-description, ros2launch, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-jackal-gazebo";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/foxy/jackal_gazebo/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8f0be6d00d40427a8c25228aa86c5f557cec01bd1928efe37c25eaf884a3eeca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control jackal-control jackal-description ros2launch urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launchfiles to use Jackal in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
