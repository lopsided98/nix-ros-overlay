
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-urg-c";
  version = "1.0.4001-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/iron/urg_c/1.0.4001-5.tar.gz";
    name = "1.0.4001-5.tar.gz";
    sha256 = "aea7f3c9bc6011a1138da0321e5e22bf224c219b354d23bc03b6db22b798c64d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
