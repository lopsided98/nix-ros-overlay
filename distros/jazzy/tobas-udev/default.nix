
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, udev }:
buildRosPackage {
  pname = "ros-jazzy-tobas-udev";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_udev/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "1da18321b6e4a767003e17cbc515ad00267733db4b0b7764b34d40b2538bac3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ udev ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "C++ utilities for enumerating and monitoring Linux udev devices.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
