
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-jazzy-mola-traj-tools";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_traj_tools/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "7e0d3286b1d214692d5d7a335b70036cbca8d4cb12fb3ccc9eb431b394ba5a42";
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
