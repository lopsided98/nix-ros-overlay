
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-customization";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_customization/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "3510dcd1abff6a4edce57c868b70731e9fbdc58db76af5dd5445e4ff43ab546a";
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
