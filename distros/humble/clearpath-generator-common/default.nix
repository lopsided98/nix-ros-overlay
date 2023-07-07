
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-common";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_generator_common/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "d9ca431f66ed2c0a0c859cf756e818316e993804a9fc0d1d1a80b1de19ccb616";
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
