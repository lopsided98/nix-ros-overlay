
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-digestible";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/tier4/digestible-release/archive/release/humble/digestible/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "a99dc520d9a732f8c6997921f0166c43b149f91217dd46b3a1aeaf680aafa406";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The TIERIV digestible ros vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
