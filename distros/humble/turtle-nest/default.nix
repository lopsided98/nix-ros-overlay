
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3, python3Packages, qt5, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-humble-turtle-nest";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtle_nest-release/archive/release/humble/turtle_nest/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "551ce0c6d5e81a3b74db4143860868a99160cadb6c04ba6781532b03e1f2da15";
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
