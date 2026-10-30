
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, udev }:
buildRosPackage {
  pname = "ros-lyrical-wuji-sdk-vendor";
  version = "2026.10.26-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-ros2-release/archive/release/lyrical/wuji_sdk_vendor/2026.10.26-1.tar.gz";
    name = "2026.10.26-1.tar.gz";
    sha256 = "1335b6dfcff4b295c46735d84490fa00c0c53aca21cf34373e2cf2db8b7c0ddb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the Wuji SDK C library.";
    license = with lib.licenses; [ mit ];
  };
}
