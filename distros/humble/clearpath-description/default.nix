
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-description";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_description/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "3d98602203109840094afaf49fc7ed2aebd046b8eef307413047ad3b933a2403";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-mounts-description clearpath-platform-description clearpath-sensors-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath URDF descriptions metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
