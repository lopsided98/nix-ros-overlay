
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-simulation";
  version = "4.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_simulation-release/archive/release/humble/tiago_simulation/4.12.0-1.tar.gz";
    name = "4.12.0-1.tar.gz";
    sha256 = "734dd0bd5582c2fca180a90f51ad304601aa0b8921757cb528b618c27c61cabe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
