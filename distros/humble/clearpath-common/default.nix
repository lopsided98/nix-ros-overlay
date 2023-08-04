
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-common";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_common/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "e64880412f42ce46ef910531fbd6dd431d97d4b709cdf033a4d9714166338d81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-control clearpath-description clearpath-generator-common clearpath-platform ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Common Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
