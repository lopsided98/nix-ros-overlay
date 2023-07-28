
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-clearpath-mounts-description";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_mounts_description/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "a831a04cf625396994aef385abfd1ac7686d683441d76178d03404062c3c785c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath mounts URDF descriptions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
