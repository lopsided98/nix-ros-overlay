
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-common";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_common/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "8ce2d99e9986395463fe975e06a57f3dd0a17665cf09308289494d7358b39c85";
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
