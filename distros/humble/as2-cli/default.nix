
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-as2-cli";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_cli/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "f7aef8d9e5b7fb86fc8f009462aed7eda92a1721e9de3de880f7744528312c43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 CLI Package";
    license = with lib.licenses; [ bsd3 ];
  };
}
