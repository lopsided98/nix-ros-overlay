
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, jackal-gazebo }:
buildRosPackage {
  pname = "ros-foxy-jackal-simulator";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/foxy/jackal_simulator/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "074e231e065beef98b81426ff2a81a1fea0ba2b152f942e373728a1106774f8f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ jackal-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for simulating Jackal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
