
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-jazzy-mola-traj-tools";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_traj_tools/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ea7d7d6063f72a4bdb03a0d96b04d462b7047b1d6a587c4d9a24051ec7d31f37";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tools to manipulate trajectory files as a complement to the evo package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
