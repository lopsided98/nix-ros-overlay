
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3, python3Packages, qt5, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-turtle-nest";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtle_nest-release/archive/release/rolling/turtle_nest/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "347770a170437244d418a9c50cce128af1796c78786d6c66529fa3e3decf0219";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3 python3Packages.black python3Packages.pybind11 qt5.qtbase qt5.qtsvg tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Package Creator";
    license = with lib.licenses; [ asl20 ];
  };
}
