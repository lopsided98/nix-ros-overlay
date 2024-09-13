
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, qt5 }:
buildRosPackage {
  pname = "ros-rolling-turtle-nest";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtle_nest-release/archive/release/rolling/turtle_nest/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "303b3a731c23fbc06e17c7f08d26a10fe8fb1fbb13bbf97b9554cfd2c92c3841";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Package Creator";
    license = with lib.licenses; [ asl20 ];
  };
}
