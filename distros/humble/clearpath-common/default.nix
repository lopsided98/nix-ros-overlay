
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-common";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_common/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "1d6cb531a453cf37e7233ddeda705fb5e03d2c39e3a815edf129a665794f61de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-control clearpath-description clearpath-generator-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
