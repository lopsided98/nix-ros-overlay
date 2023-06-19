
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-foxy-swri-serial-util";
  version = "3.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/foxy/swri_serial_util/3.5.2-3.tar.gz";
    name = "3.5.2-3.tar.gz";
    sha256 = "da37a573fb141da91270decd8771a3a077f14b93513a2e8bde2a84f3610da025";
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
