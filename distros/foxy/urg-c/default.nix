
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-urg-c";
  version = "1.0.4001-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/foxy/urg_c/1.0.4001-1.tar.gz";
    name = "1.0.4001-1.tar.gz";
    sha256 = "0088bd027433808c53a2674cbca027e71f1dab18fe33f61dabb7db6d586634eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
