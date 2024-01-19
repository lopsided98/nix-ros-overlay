
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-osqp-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/tier4/osqp_vendor-release/archive/release/noetic/osqp_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "e49b3bd538d8a93dc1f872bb3b52d6b2b27bfe14580ea7a6579337374d506d51";
  };

  buildType = "catkin";
  buildInputs = [ catkin git ros-environment ];
  nativeBuildInputs = [ catkin git ];

  meta = {
    description = ''Wrapper around osqp that ships with a CMake module'';
    license = with lib.licenses; [ asl20 ];
  };
}
