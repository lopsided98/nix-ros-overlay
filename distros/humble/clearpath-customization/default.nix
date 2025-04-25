
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-customization";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_customization/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "32372a193c28ff930b6f051fbf5b8c9a8997f818476847539540000db28908a3";
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
