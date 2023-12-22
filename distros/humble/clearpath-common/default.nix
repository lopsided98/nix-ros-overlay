
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-common";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_common/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "bb434ac0474e23d7bb913ad88e9fc1ec8215f423946bae4d8481d258c5ec0215";
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
