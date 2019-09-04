
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cunit, cmake, openjdk, maven }:
buildRosPackage {
  pname = "ros-dashing-cyclonedds";
  version = "0.1.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/cyclonedds-release/archive/release/dashing/cyclonedds/0.1.0-1.tar.gz;
    sha256 = "e28dd7c84d0d57d8d0aca8d1cf6cc6a297d214abe43e450e6e9ec683c82eecd1";
  };

  buildType = "cmake";
  buildInputs = [ cunit ];
  propagatedBuildInputs = [ openjdk ];
  nativeBuildInputs = [ openjdk cmake maven ];

  meta = {
    description = ''Performant and robust open-source DDS implementation.'';
    license = with lib.licenses; [ "EPL-2.0" ];
  };
}
