
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-andino-hardware";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_hardware/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "631ed8de2cc2272e64d582d343a561c1d8a09e9fa20530ada7576a247ec0231f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The andino_hardware package'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
