
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch, launch-pal, launch-ros, pal-gazebo-worlds, tiago-2dnav, tiago-bringup, tiago-description, tiago-moveit-config }:
buildRosPackage {
  pname = "ros-humble-tiago-gazebo";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_gazebo/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "dc24fd9202946c91d8733cc60727a2bbc0445f272923417ac40c7f44d23e2ee5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch launch-pal launch-ros pal-gazebo-worlds tiago-2dnav tiago-bringup tiago-description tiago-moveit-config ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The tiago_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
