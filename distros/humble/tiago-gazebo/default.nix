
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch, launch-pal, launch-ros, pal-gazebo-worlds, tiago-2dnav, tiago-bringup, tiago-description, tiago-moveit-config }:
buildRosPackage {
  pname = "ros-humble-tiago-gazebo";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_gazebo/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "02c62ba6b9d38bb24528e002e24863561b03e8b5de14d9f61c29e5b94159e278";
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
