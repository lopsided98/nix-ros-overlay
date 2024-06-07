
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-customization";
  version = "0.2.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_customization/0.2.9-1.tar.gz";
    name = "0.2.9-1.tar.gz";
    sha256 = "6790bfa2c39e9c1e2a34b87d5e6f4ec06cb30e25b59c15bd8e5976e37529958d";
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
