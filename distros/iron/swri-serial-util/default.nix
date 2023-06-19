
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-iron-swri-serial-util";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_serial_util/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "cd6beebd58f2720a67de69906c5a8c1df8e373b4944dda2a2c2a9b50058649cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
