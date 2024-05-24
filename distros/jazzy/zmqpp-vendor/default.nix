
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-jazzy-zmqpp-vendor";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zmqpp_vendor-release/archive/release/jazzy/zmqpp_vendor/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "bd2da172d2c66548239dbfc594c17d0209c18e4bb8bb8d92bb8a43a3e0eb7ae9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Vendor package for zmqpp";
    license = with lib.licenses; [ asl20 "Mozilla-Public-License-2.0" ];
  };
}
