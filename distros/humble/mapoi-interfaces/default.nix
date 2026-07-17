
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-mapoi-interfaces";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/humble/mapoi_interfaces/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "fae93be2c2151a61e55f3ecffad1352555b6f1f72bffc39bba12c2cfc1fdd67c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "msg and srv files used by mapoi packages";
    license = with lib.licenses; [ mit ];
  };
}
