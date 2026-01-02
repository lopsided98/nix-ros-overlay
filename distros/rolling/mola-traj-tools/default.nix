
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-rolling-mola-traj-tools";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_traj_tools/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "e74884994d53c5f1a2eef8d7cea95cc7f09887d7f40109799cf4f52b5fa68f62";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tools to manipulate trajectory files as a complement to the evo package";
    license = with lib.licenses; [ bsd3 ];
  };
}
