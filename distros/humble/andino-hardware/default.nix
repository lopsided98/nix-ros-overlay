
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-andino-hardware";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_hardware/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "dd52029ec47e80d068f95caf1634071269c2677ba09b8c000d3623a13ce90600";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The andino_hardware package";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
