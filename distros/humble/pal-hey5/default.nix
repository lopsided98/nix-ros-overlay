
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pal-hey5-controller-configuration, pal-hey5-description }:
buildRosPackage {
  pname = "ros-humble-pal-hey5";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "fd683360a7c6fdfee63d79fb553572b28acb7531baf7e1c9e457d91b644fd342";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pal-hey5-controller-configuration pal-hey5-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_hey5 package'';
    license = with lib.licenses; [ asl20 ];
  };
}
