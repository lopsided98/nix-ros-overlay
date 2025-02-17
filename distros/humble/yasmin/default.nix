
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-humble-yasmin";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "b246e13e32c512062c3840eeaca9c0451481fb53f87fff9eae0eb835c0a26dc5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest python3Packages.pytestcov ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) main package";
    license = with lib.licenses; [ gpl3 ];
  };
}
