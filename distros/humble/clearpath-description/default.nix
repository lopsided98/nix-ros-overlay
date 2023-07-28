
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-description";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_description/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "8e5ea2f00c6f04676af7da84c92b258a914b45c5f23104eaf00bfb0f201966f6";
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
