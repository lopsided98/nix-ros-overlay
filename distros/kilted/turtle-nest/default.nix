
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3, python3Packages, qt5, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-kilted-turtle-nest";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtle_nest-release/archive/release/kilted/turtle_nest/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ce1175f5ee23ab88745e9bc4580db68b97f22e3ae240c0852112d1de355879bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.black ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3 python3Packages.pybind11 qt5.qtbase qt5.qtsvg tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Package Creator";
    license = with lib.licenses; [ asl20 ];
  };
}
