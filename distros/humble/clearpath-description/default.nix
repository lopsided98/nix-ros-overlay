
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-description";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_description/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "cfe1844713d6aafefac54c7f35b4a9d97f2eb496d300fea8118fef6714260cd0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-mounts-description clearpath-platform-description clearpath-sensors-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath URDF descriptions metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
