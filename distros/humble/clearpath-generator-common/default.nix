
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-common";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_generator_common/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "0bab9b04acb1914deffa862fd270fb06036085ba1d56f2ebd850cf6f8eec6b18";
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
