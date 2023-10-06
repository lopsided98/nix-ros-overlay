
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-common";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_generator_common/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "62f37665fb1864d6e53b02f7a6be33451be93fa6f46a206400d1c494d5e1bdd7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config clearpath-control clearpath-description clearpath-platform ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
