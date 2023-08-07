
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-common";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_generator_common/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "f543d31080879b13a9d167736d743b18bde3c8d29bc9288f268930a2537162ec";
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
