
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-description";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_description/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "93a6ad2dd329cf0cefdc79fa0cd052e075cbe398d30b2571544484eaa8d9c7c3";
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
