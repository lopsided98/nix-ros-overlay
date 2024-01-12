
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-humble-zmqpp-vendor";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zmqpp_vendor-release/archive/release/humble/zmqpp_vendor/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "f77068948950a7d57ba92fc60aa661493ecbce98be5dd20ac28fc7e8fd3fb550";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Vendor package for zmqpp'';
    license = with lib.licenses; [ asl20 "Mozilla-Public-License-2.0" ];
  };
}
