
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-customization";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_customization/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "b423533e9f4fd5057127fcad425fa8eafdb4ab12f3d5a5befd79c65be56391e2";
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
