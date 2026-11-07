
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-poses }:
buildRosPackage {
  pname = "ros-jazzy-mola-traj-tools";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_traj_tools/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "07db8e03168927d7cffae62e7be9fee99d05059a22a11c8bdb747ab0614d4e18";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tools to manipulate trajectory files as a complement to the evo package";
    license = with lib.licenses; [ bsd3 ];
  };
}
