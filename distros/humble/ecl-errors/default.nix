
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-errors";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/humble/ecl_errors/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "1eaa00379e5cee9613dc326316f148bbf9d4942ea8267e2717968eb9496007a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This library provides lean and mean error mechanisms.
    It includes c style error functions as well as a few
    useful macros. For higher level mechanisms,
    refer to ecl_exceptions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
