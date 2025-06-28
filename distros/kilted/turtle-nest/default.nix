
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, qt5 }:
buildRosPackage {
  pname = "ros-kilted-turtle-nest";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtle_nest-release/archive/release/kilted/turtle_nest/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "4c4b53c37997617f9906167c73039b4e59f21a5c45d24e41435c36e3d91bd19e";
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
