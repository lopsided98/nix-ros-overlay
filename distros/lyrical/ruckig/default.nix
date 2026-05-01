
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-ruckig";
  version = "0.9.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/lyrical/ruckig/0.9.2-6.tar.gz";
    name = "0.9.2-6.tar.gz";
    sha256 = "19e69467098376e1eee1e7eafc6f7d2376886bf4dedfbee5a30debfcfdaad91f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Instantaneous Motion Generation for Robots and Machines.";
    license = with lib.licenses; [ mit ];
  };
}
