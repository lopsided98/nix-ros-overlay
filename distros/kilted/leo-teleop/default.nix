
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joy-linux, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-kilted-leo-teleop";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/kilted/leo_teleop/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "127d91e7d421b0eee65e612a8aa2d83fecc0e5f7298bedf86c82644271e47020";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ joy-linux teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Scripts and launch files for Leo Rover teleoperation";
    license = with lib.licenses; [ mit ];
  };
}
