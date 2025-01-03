
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-andino-slam";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_slam/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ec342630178ad393b6683f8e3ee12d3015e0bd1c9bcc54fa10353aaf395d9d7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The andino_slam package";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
