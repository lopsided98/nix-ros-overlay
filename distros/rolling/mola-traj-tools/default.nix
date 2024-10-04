
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-rolling-mola-traj-tools";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_traj_tools/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "e871e2bafaabf050f5d33e0cc238297ccef1a909eafdb0ca9b8b7a2fae6f088b";
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
