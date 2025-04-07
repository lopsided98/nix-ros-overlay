
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-customization";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_customization/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "1cf55170cce77537aa49be4af2c58cee6e798dd66660efe793f2ddde59dd9b10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath customization packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
