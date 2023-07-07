
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-description";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_description/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "a8a2dc81aa28dc5a1f038b71d49ae07b79880eb9bf024e60cd3f45816074c95c";
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
